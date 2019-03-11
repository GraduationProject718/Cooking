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
	<link rel="stylesheet" href="css/index.css">

  </head>
  
  <body>
  <div class="container">
  	<jsp:include page="head.jsp"></jsp:include>
  	<c:forEach items="${page.list}" var="r" varStatus="status">
		<img style="width:50px;height:50px;" src="${pageContext.request.contextPath}/${r.r_img }"><br />
		${r.r_name } <br />
		${r.r_information }<br />
	    </c:forEach>
	    <jsp:include page="pageFile.jsp"></jsp:include>
	    <jsp:include page="footer.jsp"></jsp:include>
	    </div>
  </body>
</html>
