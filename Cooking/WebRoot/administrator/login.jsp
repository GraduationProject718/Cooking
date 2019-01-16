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
	<form action="servlet/AdministratorServlet?flag=login" method="post">
		<table>
			<tr>
				<td>账号:</td>
				<td><input type="text" name="a_account" id="a_account" /></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="a_password" id="a_password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="登录" /></td>
			</tr>
		</table>
	</form>
  </body>
</html>
