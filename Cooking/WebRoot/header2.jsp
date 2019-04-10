<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<div style="left:400px;top:20px;display: block;position: absolute;"><img style="width:300px;" id="logo" src="images/Cooking.png"></div>
 <div class="top">
	<div class="header">
    	<span class="wec"></span>
    	<div class="call">
    	<c:if test="${empty user }">
        	<span class="call"><a href="login.jsp">登录</a>/<a href="register.jsp">注册</a></span>
        </c:if>
        <c:if test="${not empty user }">
   			<a href="UserServlet?method=addUserDate&u_id=${user.u_id }">${user.u_nickname }</a>
   		</c:if>
    	</div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="nav">
    <ul class="menu">
    	<li class="dw"><a style="background:none;padding-right:0;" href="IndexServlet">首页</a></li>
        <li class="dw">
         		<a>中餐</a>
           		<ul class="in_menu">
             		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=5&num=1">川菜</a></li>
             		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=6&num=1">徽菜</a></li>
             		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=7&num=1">鲁菜</a></li>
             		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=8&num=1">闽菜</a></li>
             		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=9&num=1">苏菜</a></li>
             		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=10&num=1">湘菜</a></li>
             		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=11&num=1">粤菜</a></li>
             		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=12&num=1">浙菜</a></li>
             	</ul>
         	</li>
        <li class="dw">
	       	<a>西餐</a>
	           <ul class="in_menu">
	       		<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=13&num=1">英式西餐</a></li>
	           	<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=14&num=1">意式大餐</a></li>
	           	<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=15&num=1">美式菜肴</a></li>
	           	<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=16&num=1">俄式大餐</a></li>
	           	<li><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=17&num=1">法式大餐</a></li>
	       	</ul>
	      </li>
        <li class="dw"><a style="background:none;padding-right:0;" href="RecipeServlet?method=getRecipeByRBDId&rbd_id=3&num=1">饮品</a></li>
       	<li class="dw"><a style="background:none;padding-right:0;" href="RecipeServlet?method=getRecipeByRBDId&rbd_id=4&num=1">甜点</a></li>
       	<li class="dw"><a style="background:none;padding-right:0;" href="VideosServlet?method=getVideosByMenu&num=1">视频中心</a></li>
       	<li class="dw"><a style="background:none;padding-right:0;" href="ArticleServlet?method=getArticleBytype&type=health&num=1">健康与养生</a></li>
       	<li class="dw"><a style="background:none;padding-right:0;" href="ArticleServlet?method=getArticleBytype&type=news&num=1">新闻公告</a></li>
        <div class="clearfix"></div>
    </ul>
    <div class="clearfix"></div>
</div>