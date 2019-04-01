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
	<link href="css/about.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="Javascript/jquery.js"></script>
	<style type="text/css">
		.videos{
			width:410px;height:250px;margin-top:10px;margin-right:20px;
		}
	</style>
  </head>
  
  <body>
   		<jsp:include page="header2.jsp"></jsp:include>
   		<div class="banner">
	<div class="xian_2"></div>
	<img src="images/banner_1.png">
<!--     <div class="title_1"><div class="kk"><h1>新闻公告</h1></div></div> -->
</div>
<div class="location">
	当前位置：首页 >   <span>视频浏览</span>
</div>
   		
   			<table style="margin: 0 auto;">
   			<tr>
  			<c:forEach items="${page.list}" var="v" varStatus="status">
  				<c:if test="${status.count <4 }">
  				<td>
  					<video src="${pageContext.request.contextPath}/${v.v_url}" class="videos" controls="controls"></video>
  					<br />
					<center>${v.v_name }</center>
					<br />
				</td>
				</c:if>
		   </c:forEach>
		   </tr>
		   <tr>
  			<c:forEach items="${page.list}" var="v" varStatus="status">
  				<c:if test="${status.count >= 4 }">
  				<td>
  					<video src="${pageContext.request.contextPath}/${v.v_url}" class="videos" controls="controls"></video>
  					<br />
					<center>${v.v_name }</center>
					<br />
				</td>
				</c:if>
		   </c:forEach>
		   </tr>
		   </table>
		   <jsp:include page="pageFile.jsp"></jsp:include>
   		<jsp:include page="footer2.jsp"></jsp:include>
  </body>
</html>
