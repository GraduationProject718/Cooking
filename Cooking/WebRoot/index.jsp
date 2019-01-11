<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<script type="text/javascript" src="layui/layui.all.js"></script>
  </head>
  
  <body>
    <!--logo图片 登录/注册--> 
<div class="layui-container">  
  <div class="layui-row">
    <div class="layui-col-md9">
      你的内容 9/12---logo
    </div>
    <div class="layui-col-md3">
      你的内容 3/12---login/register
    </div>
  </div>
</div>
<!--菜单-->
<ul class="layui-nav" lay-filter="">
<li class="layui-nav-item"><a href="">首页</a></li>
<li class="layui-nav-item layui-this"><a href="javascript:;">中餐</a>
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
<li class="layui-nav-item"><a href="">饮品/甜点</a></li>
<li class="layui-nav-item"><a href="">健康与养生</a></li>
<li class="layui-nav-item"><a href="">视频中心</a></li>
</ul>

<script>
//注意：导航 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
var element = layui.element;

//…
});
</script>
<!--搜索栏-->
<div class="layui-container">  
  <div class="layui-row">
    <div class="layui-col-md9">
       搜索栏
    </div>
    <div class="layui-col-md3">
      你的内容 3/12---搜索栏
    </div>
  </div>
</div>
	
<!--滚动图片-->
<div class="layui-carousel" id="test1">
  <div carousel-item>
    <div>条目1</div>
    <div>条目2</div>
    <div>条目3</div>
    <div>条目4</div>
    <div>条目5</div>
  </div>
</div>
<!-- 条目中可以是任意内容，如：<img src=""> --> 
<script type="text/javascript" src="layui/layui.all.js"></script>
<script>
layui.use('carousel', function(){
  var carousel = layui.carousel;
  //建造实例
  carousel.render({
    elem: '#test1'
    ,width: '100%' //设置容器宽度
    ,arrow: 'always' //始终显示箭头
    //,anim: 'updown' //切换动画方式
  });
});
</script> 
	
<!--推荐/热门-->
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">推荐</li>
    <li>热门</li>
  </ul>
  <div class="layui-tab-content">
    <div class="layui-tab-item layui-show">内容1</div>
    <div class="layui-tab-item">内容2</div>
  </div>
</div>
 
<script>
//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
	
<!--中餐--> 
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">中餐</li>
  </ul>
  <div class="layui-tab-content">
    <div class="layui-tab-item layui-show">内容1</div>
  </div>
</div>
 
<script>
//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
	
<!--西餐--> 
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">西餐</li>
  </ul>
  <div class="layui-tab-content">
    <div class="layui-tab-item layui-show">内容1</div>
  </div>
</div>
 
<script>
//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
	
<!--饮品/甜点-->
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this">饮品</li>
    <li>甜点</li>
  </ul>
  <div class="layui-tab-content">
    <div class="layui-tab-item layui-show">内容1</div>
    <div class="layui-tab-item">内容2</div>
  </div>
</div>
 
<script>
//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
<!--footer-->
  </body>
</html>
