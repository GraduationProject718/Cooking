<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>食谱查看</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/index.css">

  </head>
  
  <body>
  	<div class="container">
  	<jsp:include page="head.jsp"></jsp:include>
  		<img style="width:330px;height:200px;margin-right:20px;" src="${pageContext.request.contextPath}/${recipe.r_img }">
  		<br>
  		${recipe.r_name }<br />
  		${recipe.r_information }<br />
  		${recipe.r_material }<br />
  		${recipe.r_practice }<br />
  		${recipe.r_time }<br />
    <jsp:include page="footer.jsp"></jsp:include>
    </div>
  </body>
</html>
