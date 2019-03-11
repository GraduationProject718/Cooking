<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" href="layui/css/layui.css">
<script type="text/javascript" src="layui/layui.js"></script>
	<ul class="layui-nav" style="width:85%">
	<li class="layui-nav-item layui-this"><a href="">首页</a></li>
	<li class="layui-nav-item"><a href="javascript:;">中餐</a>
	<dl class="layui-nav-child"> <!-- 二级菜单 -->
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=5&num=1">川菜</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=6&num=1">徽菜</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=7&num=1">鲁菜</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=8&num=1">闽菜</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=9&num=1">苏菜</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=10&num=1">湘菜</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=11&num=1">粤菜</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=12&num=1">浙菜</a></dd>
	</dl>	
	</li>
	<li class="layui-nav-item"><a href="javascript:;">西餐</a>
	<dl class="layui-nav-child"> <!-- 二级菜单 -->
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=13&num=1">英式西餐</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=14&num=1">意式大餐</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=15&num=1">美式菜肴</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=16&num=1">俄式大餐</a></dd>
	  <dd><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=17&num=1">法式大餐</a></dd>
	</dl>
	</li>
	<li class="layui-nav-item"><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=3&num=1">饮品</a></li>
	<li class="layui-nav-item"><a href="RecipeServlet?method=getRecipeByRBDId&rbd_id=4&num=1">甜点</a></li>
	<li class="layui-nav-item"><a href="ArticleServlet?method=getArticleBytype&type=health&num=1">健康与养生</a></li>
	<li class="layui-nav-item"><a href="VideosServlet?method=getVideosByMenu&num=1">视频中心</a></li>
	<li class="layui-nav-item"><a href="ArticleServlet?method=getArticleBytype&type=news&num=1">新闻公告</a></li>
	</ul>
	<script>
	layui.use('element', function(){
	var element = layui.element;
	
	});
	</script>