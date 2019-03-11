<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.parse.js"> </script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
	<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
    
	<script type="text/javascript" src="bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>
	
	<script type="text/javascript">
		$(function(){
			var ue = UE.getEditor('a_content');
		});
	</script>
  </head>
  
  <body>
  	<div class="container">
   	<jsp:include page="head.jsp"></jsp:include>
   	<form action="ArticleServlet?method=addArticle" method="post" enctype="multipart/form-data">
		<textarea name="a_content" id="a_content" style="width: 90%; height: 100%;"></textarea>
   		<h3><input style="margin:20px;" class="layui-btn layui-btn-normal" value="编辑完成" data-toggle="modal" data-target="#addArticle"><i class="layui-icon"/></h3>
   		<!-- 添加 文章begin --><!-- 模态框（Modal） -->
  	
		<div class="modal fade" id="addArticle" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">添加文章</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<input type="hidden" name="a_UId" id="a_UId" value="${user.u_id }">
		 				<label>输入标题</label><input class="layui-input" type="text" name="a_title" id="a_title" /><br />
						<label>输入时间</label><input class="layui-input" type="text" name="a_time" id="a_time"/>
						<label>食谱</label>
						<select name="a_type">
			       			<option value="health">健康与养生</option>
			       			<option value="news">新闻公告</option>
					     </select>
					     <br />
					     <label>选择封面</label><input class="layui-input" type="file" name="a_img" id="a_img"/>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" id="saveArticle" >确定</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
	</form>
	
   	<jsp:include page="footer.jsp"></jsp:include>
   	</div>
  </body>
</html>
