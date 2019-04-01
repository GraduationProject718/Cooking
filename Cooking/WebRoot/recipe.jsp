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
  </head>
  
  <body>
	    <jsp:include page="header2.jsp"></jsp:include>
	    
	    <div class="banner">
	<div class="xian_2"></div>
	<img src="images/banner_1.png">
    <div class="title_1"><div class="kk"><h1>特色美食</h1></div></div>
</div>
<div class="location">
	当前位置：首页 > 特色美食 > <span>全部</span>
</div>
<div class="food">
	<div class="pro">
	<c:forEach items="${page.list}" var="r" varStatus="status">
		 <a class="no_margin" href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}" >
        	<div class="ss"><img src="${pageContext.request.contextPath}/${r.r_img }" ></div>
            <div class="black"></div>
            <div class="des">${r.r_name }</div>
       	</a>
	</c:forEach>
    <div class="clearfix"></div>
	</div>
</div>    
<jsp:include page="pageFile.jsp"></jsp:include>
<jsp:include page="footer2.jsp"></jsp:include>
	     
	     
	<script type="text/javascript">
	$(".menu_2").hide();
	$(".menu_1 li").mouseenter(
		function(){
			$(this).children(".menu_2").show();	
		}
	)
	$(".menu_1 li").mouseleave(
		function(){
			$(this).children(".menu_2").hide();	
		}
	)
	$(".pro a").mouseenter(
		function(){
		$(this).children(".black").hide();
		$(this).siblings().children(".black").show(); 
		$(this).children(".des").addClass("red");
		$(this).siblings().children(".des").removeClass("red");				
	})
	
	$(".pro a").mouseleave(
		function(){
			$(this).children(".black").show();
			$(this).children(".des").removeClass("red");
		}
	)
</script>      
  </body>
</html>
