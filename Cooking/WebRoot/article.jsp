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
<!--     <div class="title_1"><div class="kk"><h1>新闻公告</h1></div></div> -->
</div>
<div class="location">
	当前位置：首页 >   <span>文章浏览</span>
</div>

    <div class="news_box">
    	<c:forEach items="${page.list}" var="a" varStatus="status">
    		<div class="news" onClick="link('${a.a_id }')" >
	        	<a href="ArticleServlet?method=findArticleById&a_id=${a.a_id }" ><img  src="${pageContext.request.contextPath}/${a.a_img }" ></a>
	            <div class="con">
	                <a href="ArticleServlet?method=findArticleById&a_id=${a.a_id }" >${a.a_title }</a>
	                <span>${a.a_time }</span>
	                <div class="small_font">${a.a_content }...</div>
	            </div>
	            <div class="clearfix"></div>
	        </div>
	    </c:forEach>
    	<jsp:include page="pageFile.jsp"></jsp:include>
    </div>

 <jsp:include page="footer2.jsp"></jsp:include>
<script type="text/javascript">
	$(".news_box").hide().eq(0).show();
	$(".menu_1 li").click(
		function(){
			$(".news_box").eq($(this).index()).show();	
			$(".news_box").eq($(this).index()).siblings(".news_box").hide();
			$(this).addClass("red");
			$(this).siblings(".menu_1 li").removeClass("red");
			$(this).children("div").addClass("xian");
			$(this).siblings(".menu_1 li").children("div").removeClass("xian");
		}
	)
	
	$(".news").mouseenter(
		function(){
			$(this).addClass("shadow");	
			$(this).find("a").css("color","#d7000f");
		}
	)
	
	$(".news").mouseleave(
		function(){
			$(this).removeClass("shadow");	
			$(this).find("a").css("color","#333");
		}
	)
	
	function link(id){
		window.location.href="ArticleServlet?method=findArticleById&a_id="+id;
	}
</script> 
    
    
  </body>
</html>
