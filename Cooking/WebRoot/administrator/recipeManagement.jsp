<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>烹饪技术学习网后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		.layui-form-pane{
			padding-top:20px;
		}
		.layui-form-pane .layui-form-label{
			background-color: #1e9fff;
			margin-left: 20px;
		}
		.layui-table{
			width:95%;
			margin-left: 20px;
		}
		.layui-input{
			width:200px;
		}
		.page{
			margin:0 auto;
		}
	</style>
	
	<script type="text/javascript">
		function to_page(page){
			if(page >0){
				$("#page").val(page);
			}
			document.articleForm.submit();
		}
		
		$(function(){
			$.post("${pageContext.request.contextPath}/menu_getMenuImg.action",{"id":"6"},function(data){
				$(data).each(function(i,n){
					$("#getImg").append("<button data-toggle='modal' data-target='#modMenuImg'><img style='width:350px;' src='${pageContext.request.contextPath}/upload/menuImg\\"+n.img_name+"' /></button>");
					$("#getValue").append("<input type='hidden' name='text' id='text' value='"+n.text+"' /><input type='hidden' name='menu_show' id='menu_show' value='"+n.menu_show+"' /><input type='hidden' name='type' id='type' value='"+n.type+"' />");
				});
			},"json");
		
		});
	</script>
  </head>
  
  <body>
	<div class="layui-form layui-form-pane">
  		<div class="layui-form-item">
  			<table>
  				<tr>
  					<td>
  						<label class="layui-form-label">保密工作</label>
  					</td>
  					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  					<td><a href=""><button class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe608;</i> 添加</button></a></td>
  					<td><button class="layui-btn layui-btn-normal">更换图片</button></td>
  				</tr>
  			</table>
  		</div>
	
	<!-- 表格 begin -->
	<table class="layui-table">
	  <colgroup>
	    <col>
	    <col width="200">
	    <col width="200">
	  </colgroup>
	  <thead>
	    <tr>
	      <th>标题</th>
	      <th>发布时间</th>
	      <th>操作</th>
	    </tr>
	  </thead>
	  <tbody>
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	  </tbody>
	</table>
	<!-- 表格 end -->
	
	<!-- 分页 -->
	<form id="articleForm" name="articleForm" action="" method="post">
	<table class="page">
			<tr>
				<td >
					<div class="layui-box layui-laypage layui-laypage-molv">
					[<A class="layui-laypage-first" href="javascript:to_page(1)">首页</A>]
					[<a class="layui-laypage-prev" href="javascript:to_page()">前一页</a>]
					
					[<a class="layui-laypage-next" href="javascript:to_page()">下一页</a>]
					[<A class="layui-laypage-last" href="javascript:to_page()">尾页</A>]
					
					到<input type="hidden" size="3" id="page" name="currPage" />页
					</div>
				</td>
			</tr>
	</table>
	</form>
	</div>
  </body>
</html>
