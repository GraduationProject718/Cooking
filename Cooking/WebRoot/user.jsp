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
	

  </head>
  
  <body>
	<center>
	<div class="container">
	<jsp:include page="head.jsp"></jsp:include>
		昵称:${user.u_nickname}
		简介：${user.u_information}
		电话：${user.u_phone }
		邮箱：${user.u_email }
		
		
	<jsp:include page="footer.jsp"></jsp:include>			
	</div>
	</center>
  </body>
</html>
