<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
	<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>

  </head>
  
  <body>
	<center>
  	<div class="container">
   	<jsp:include page="head.jsp"></jsp:include>
   	<form action="VideosServlet?method=addVideos" method="post" enctype="multipart/form-data">
 		视频名称<input type="text" name="v_name"  id="v_name"/><br />
 		文件<input type="file" name="v_url" id="v_url" />
 		<input type="hidden" name="v_UId" id="v_UId" value="${user.u_id }">
 		<input type="submit" value="提交" />
   	</form>
   	<jsp:include page="footer.jsp"></jsp:include>
   	</div>
   	</center>
		
  </body>
</html>
