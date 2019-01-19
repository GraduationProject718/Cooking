<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>烹饪技术学习网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.parse.js"> </script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    
	<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<link rel="stylesheet" href="css/index.css" >
	<script type="text/javascript">
	var ue = UE.getEditor('a_content');
	
	$(function(){
		$.post("${pageContext.request.contextPath}/servlet/RecipeBaseDictServlet?flag=findAll",{},function(data){
			var rbdParent = eval(data);
			var rbdChild = eval(data);
			$.each(rbdParent,function(i,parent_item){
          		if(rbdParent[i].rbd_parentId == 0){
    				$("#rbd_parent").append("<option value='"+rbdParent[i].rbd_id+"'>"+rbdParent[i].rbd_name+"</option>");
         			}
         			if(rbdParent[i].rbd_parentId == 1){
         				$("#rbd_child").append("<option value='"+rbdParent[i].rbd_id+"'>"+rbdParent[i].rbd_name+"</option>");
         			}
			});
		},"json");
	});
		
	function getChild(){
		$("#rbd_child").empty();
		var rbd_id =$("#rbd_parent").val();
		$.post("${pageContext.request.contextPath}/servlet/RecipeBaseDictServlet?flag=findAll",{},function(data){
			var rbdChild = eval(data);
  				$.each(rbdChild,function(j,child_item){
    				if(rbd_id == rbdChild[j].rbd_parentId){
    					$("#rbd_child").append("<option value='"+rbdChild[j].rbd_id+"'>"+rbdChild[j].rbd_name+"</option>");
    				}
			});
		},"json");
	}
	</script>
  </head>
  
  <body>
    <center>
  	<div class="container">
   	<jsp:include page="head.jsp"></jsp:include>
   	<form action="servlet/ArticleServlet?flag=addArticle" method="post">
		<textarea name="a_content" id="a_content" style="width: 100%; height: 100%;margin:0 auto;"></textarea>
   		<h3><input class="layui-btn layui-btn-normal" value="编辑完成" data-toggle="modal" data-target="#addArticle"><i class="layui-icon"/></h3>
   		<!-- 添加 文章begin --><!-- 模态框（Modal） -->
  	
		<div class="modal fade" id="addArticle" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">添加文章</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<input type="hidden" name="u_id" id="u_id" value="${user.u_id }">
				 		<select id="rbd_parent" name="rbd_parent" onchange="getChild()">
				 		</select>
				 		<select id="rbd_child" name="rbd_child">
				 		</select><br />
		 				<label>输入标题</label><input class="layui-input" type="text" name="a_title" id="a_title" ><br />
						<label>输入时间</label><input class="layui-input" type="text" name="a_time" id="a_time">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" id="saveArticle" >确定</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
	</form>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
	<script>
	layui.use('laydate', function(){
	  var laydate = layui.laydate;
	 
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#a_time' //指定元素
	  });
	});
	</script>
	
  	<!-- 添加 文章end -->
   	<jsp:include page="footer.jsp"></jsp:include>
   	</div>
   	</center>
  </body>
</html>
