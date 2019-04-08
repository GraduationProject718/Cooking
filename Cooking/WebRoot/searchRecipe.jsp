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
	
	<link href="css/about.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="Javascript/jquery.js"></script>
	<style type="text/css">
		.recipeImg{
			width:410px;height:250px;margin-top:20px;margin-right:20px;
		}
		.container{
			padding-left:300px;
		}
	</style>
  </head>
  
  <body>
   <jsp:include page="header2.jsp"></jsp:include>
  <div class="container">
	    <table>
	    	<tr>
    		<c:forEach items="${page.list}" var="r" varStatus="status">
    			<c:if test="${status.count < 4 }">
    				<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
    			</c:if>
    		</c:forEach>
    		</tr>
    		<tr>
    		<c:forEach items="${page.list}" var="r" varStatus="status">
    			<c:if test="${status.count >= 4 }">
    				<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
    			</c:if>
    		</c:forEach>
    		</tr>
    	</table>
	    </div>
	    <jsp:include page="pageFile.jsp"></jsp:include>
	    <jsp:include page="footer2.jsp"></jsp:include>
  </body>
</html>
