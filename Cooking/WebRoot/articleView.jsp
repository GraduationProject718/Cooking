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
	<link href="css/about.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="Javascript/jquery.js"></script>
<script type="text/javascript" src="Javascript/jq_scroll.js"></script>

<style type="text/css">
		.evaluate{
			width:1200px;
			padding-left:250px;
		}
		.evaluate textarea{
			border:2px solid;
		}
	</style>
  </head>
  
  <body>
 	<jsp:include page="header2.jsp"></jsp:include>
 	
 	<%-- <div style="width:85%;">
 	<center><h1>${article.a_title }</h1></center>
 	<img style="width:330px;height:200px;margin-right:20px;" src="${pageContext.request.contextPath}/${article.a_img }">
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
  		</script> --%>
  		
  		
  	<div class="banner">
	<div class="xian_2"></div>
	<img src="images/banner_1.png">
    <div class="title_1"><div class="kk"><h1>文章查看</h1></div></div>
</div>
<div class="news_del">
	<div class="main">
    	<h3>${article.a_title }</h3>
        <h6>发布时间：${article.a_time }</h6>
       <%--  <img style="width:330px;height:200px;margin-right:20px;" src="${pageContext.request.contextPath}/${article.a_img }"> --%>
    	${article.a_content }
        <!-- <div class="link">
        	<div class="link_1"><span>下一篇：</span><a href="">贵阳山庄提示外出游玩或是农家乐的几大注意事项</a></div>
        	<div class="link_1"><span>上一篇：</span><a href="">【贵阳农家乐】你知道休闲山庄CS野战作战技巧包括哪些内容吗</a></div>
        </div> -->
    </div>
    
    <div class="clearfix"></div>
</div>
  		<div class="evaluate">
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
	</div>
 	<script type="text/javascript">
  			function check(u_id){
  				if(u_id == "" || u_id == null){
  					alert("请登录后再评论！");
  					return false;
  				}
  				return true;
  			}
  		</script>
  		
 	<jsp:include page="footer2.jsp"></jsp:include>
  </body>
</html>
