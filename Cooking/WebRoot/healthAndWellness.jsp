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
	
	<c:forEach items="${article}" var="a">
		${a.a_title} ${a.a_time}<br />
	</c:forEach>
	<a href="servlet/ArticleServlet?flag=healthAndWellness&currentPage=1">首页</a>	
	<a href="servlet/ArticleServlet?flag=healthAndWellness&currentPage=${currPage-1}">上一页</a>
	当前页数：${currPage}
	<a href="servlet/ArticleServlet?flag=healthAndWellness&currentPage=${currPage+1}">下一页</a>
	<a href="servlet/ArticleServlet?flag=healthAndWellness">尾页</a>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</center>
  </body>
</html>
