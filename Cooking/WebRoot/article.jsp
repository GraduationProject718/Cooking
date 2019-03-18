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
	<style type="text/css">
		.articleDiv{
			border:2px solid black; margin-top:10px;display: block;
		}
		.articleDiv img{
			width:410px;
			height:250px;
			margin:10px;
			display: block;
		}
		.article{
			width:810px;
			margin:20px;
			padding:20px;
		}
	</style>
  </head>
  
  <body>
    <div class="container">
  	<jsp:include page="head.jsp"></jsp:include>
  	<table>
  	<c:forEach items="${page.list}" var="a" varStatus="status">
  	<tr class="articleDiv">
  		<td>
			<a href="ArticleServlet?method=findArticleById&a_id=${a.a_id }"><img src="${pageContext.request.contextPath}/${a.a_img }"></a>
		</td>
		<td class="article" valign="top" >
			<a href="ArticleServlet?method=findArticleById&a_id=${a.a_id }">${a.a_title }<br /></a>
		</td>
    </tr>
    </c:forEach>
  	</table>
    <jsp:include page="pageFile.jsp"></jsp:include>
    <jsp:include page="footer.jsp"></jsp:include>
    </div>
  </body>
</html>
