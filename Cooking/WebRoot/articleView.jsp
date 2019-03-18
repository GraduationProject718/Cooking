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
    
    <title>文章浏览</title>
    
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
 	<div style="width:85%;">
 	<center><h1>${article.a_title }</h1></center>
 	<%-- <img style="width:330px;height:200px;margin-right:20px;" src="${pageContext.request.contextPath}/${article.a_img }"> --%>
 	${article.a_content }
 	</div>
 	<form action="ArticleEvaluateServlet?method=add" method="post">
 		<input type="hidden" name="a_id" id="a_id" value="${article.a_id}" />
 		<input type="hidden" name="u_id" id="u_id" value="${user.u_id}" />
 		评论<textarea rows="10" cols="100" name="ae_content" id="ae_content"></textarea>
 		<input type="submit" value="提交" onclick="return check('${user.u_id}')" />
 	</form>
	评论内容：
	<c:forEach items="${articleEvaluate}" var="ae">
		${ae.ae_content }${ae.ae_time }<br /><br />
	</c:forEach>
 	<script type="text/javascript">
  			function check(u_id){
  				if(u_id == "" || u_id == null){
  					alert("请登录后再评论！");
  					return false;
  				}
  				return true;
  			}
  		</script>
 	<jsp:include page="footer.jsp"></jsp:include>
   </div>
  </body>
</html>
