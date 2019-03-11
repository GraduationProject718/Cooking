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
	

  </head>
  
  <body>
    <center>
  	<div class="container">
   		<jsp:include page="head.jsp"></jsp:include>
  			<c:forEach items="${page.list}" var="v" varStatus="status">
  				<video src="${pageContext.request.contextPath}/${v.v_url}" style="width:280px;height:172px;" controls="controls"></video>
			${v.v_name }
			<br />
		   </c:forEach>
		   <jsp:include page="pageFile.jsp"></jsp:include>
   		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</center>
  </body>
</html>
