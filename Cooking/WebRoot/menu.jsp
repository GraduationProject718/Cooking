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
	  <dd><a href="">川菜</a></dd>
	  <dd><a href="">徽菜</a></dd>
	  <dd><a href="">鲁菜</a></dd>
	  <dd><a href="">闽菜</a></dd>
	  <dd><a href="">苏菜</a></dd>
	  <dd><a href="">湘菜</a></dd>
	  <dd><a href="">粤菜</a></dd>
	  <dd><a href="">浙菜</a></dd>
	</dl>	
	</li>
	<li class="layui-nav-item"><a href="javascript:;">西餐</a>
	<dl class="layui-nav-child"> <!-- 二级菜单 -->
	  <dd><a href="">英式西餐</a></dd>
	  <dd><a href="">意式大餐</a></dd>
	  <dd><a href="">美式菜肴</a></dd>
	  <dd><a href="">俄式大餐</a></dd>
	  <dd><a href="">法式大餐</a></dd>
	</dl>
	</li>
	<li class="layui-nav-item"><a href="">饮品</a></li>
	<li class="layui-nav-item"><a href="">甜点</a></li>
	<li class="layui-nav-item"><a href="servlet/ArticleServlet?flag=healthAndWellness">健康与养生</a></li>
	<li class="layui-nav-item"><a href="">视频中心</a></li>
	<li class="layui-nav-item"><a href="">新闻公告</a></li>
	</ul>
	<script>
	layui.use('element', function(){
	var element = layui.element;
	
	});
	</script>