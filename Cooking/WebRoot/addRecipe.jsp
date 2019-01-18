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
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<script type="text/javascript" src="layui/layui.all.js"></script>

  </head>
  
  <body>
	<center>
  	<div class="container">
   	<jsp:include page="head.jsp"></jsp:include>
   	<form action="servlet/RecipeServlet?flag=addRecipe" method="post">
		<input type="hidden" name="u_id" id="u_id" value="${user.u_id }">
 		成品图<input type="file" name="r_img" name="r_img" /><br />
 		标题<input type="text" name="r_name" id="r_name" /><br />
 		简介<textarea rows="3" cols="3" name="r_information" id="r_information"></textarea><br />
 		材料：<textarea rows="3" cols="3" name="r_material" id="r_material"></textarea><br />
 		做法：<textarea rows="3" cols="3" name="r_practice" id="r_practice"></textarea><br />
 		<input type="submit" value="提交" />
   	</form>
   	<jsp:include page="footer.jsp"></jsp:include>
   	</div>
   	</center>
		
  </body>
</html>
