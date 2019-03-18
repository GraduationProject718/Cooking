<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<script type="text/javascript" src="layui/layui.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/bootstrap.min.js"></script>
	<style>
		.layui-container{
			margin:0px;
			padding:0px;
		}
		.layui-nav .layui-nav-item a{
			font-size: 25px;
			text-decoration: none;
		}
		.layui-col-md9 img{
			float:left;
		}
		.layui-nav-child{
			z-index:9999;
		}
		.loginAndRegister{
			margin:20px;
		}
		.user{
			margin:20px;
		}
	</style>
	<div class="layui-container">  
	<div class="layui-row">
	<div class="layui-col-md4"><img src="images/Cooking.png"></div>
	<div class="layui-col-md4 layui-col-md-offset2">
	<c:if test="${empty user }">
	   	<div class="loginAndRegister">
	   		<a href="login.jsp"><img style="width:150px;height:50px;" src="images/loginbutton.png"></a>
	   		<a href="register.jsp"><img style="width:150px;height:50px;" src="images/registerbutton.png"></a>
	   	</div>
   	</c:if>
   	<c:if test="${not empty user }">
	   	<div class="user">
	   		<ul class="layui-nav">
		  		<li class="layui-nav-item"><a href="UserServlet?method=addUserDate&u_id=${user.u_id}">个人中心</a></li>
		  		<li class="layui-nav-item">
		    		<a href="user.jsp"><img src="${pageContext.request.contextPath}/${user.u_img}" class="layui-nav-img"> ${user.u_nickname }</a>
		    			<dl class="layui-nav-child">
		      				<!-- <dd><a href="RecipeServlet?method=addRecipePage">发布菜谱</a></dd>
		      				<dd><a href="ArticleServlet?method=addArticlePage">发布文章</a></dd>
		      				<dd><a href="VideosServlet?method=addVideosPage">发布视频</a></dd> -->
		      				<dd><a href="UserServlet?method=exit">退出</a></dd>
		    			</dl>
		  		</li>
			</ul>
	   	</div>
   	</c:if>
	</div>
	</div>
	</div>
	<!--菜单-->
	<jsp:include page="menu.jsp"></jsp:include>
	<div>
		<form action="RecipeServlet?method=searchRecipe&num=1" method="post">
			<input type="text" name="searchName" id="searchName" />
			<input type="submit" value="查找食谱" />
		</form>
	</div>
