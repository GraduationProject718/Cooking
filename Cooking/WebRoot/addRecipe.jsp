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
	<input type="hidden" name="u_id" id="u_id" value="${user.u_id }">
	<center>
  	<div class="container">
   		<jsp:include page="head.jsp"></jsp:include>
   		标题<input type="text" name="r_name" id="r_name" />
   		
   		<jsp:include page="footer.jsp"></jsp:include>
   	</div>
   	</center>
		
  </body>
</html>
