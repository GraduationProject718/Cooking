<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="css/index.css" >
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<script type="text/javascript" src="layui/layui.all.js"></script>

  </head>
  
  <body>
  	<center>
  	<div class="container">
   		<jsp:include page="head.jsp"></jsp:include>
		<!--搜索栏-->
		
	<!--滚动图片-->
	<div class="layui-carousel" id="test1" >
	  <div carousel-item>
	    <div><img src="images/1.jpg"></div>
	    <div><img src="images/2.jpg"></div>
	    <div><img src="images/3.jpg"></div>
	    <div><img src="images/4.jpg"></div>
	    <div><img src="images/5.jpg"></div>
	  </div>
	</div>
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<script>
	layui.use('carousel', function(){
	  var carousel = layui.carousel;
	  //建造实例
	  carousel.render({
	    elem: '#test1'
	    ,width: '100%' //设置容器宽度
	    ,height:'400px' // 设置容器高度
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
	    <div class="layui-tab-item layui-show">
	    	<div class="layui-row layui-col-space10">
			  <div class="layui-col-md4">
				封面
			  	菜名
			  	简介
			  </div>
			  <div class="layui-col-md4">
			  	封面
			  	菜名
			 	简介
			  </div>
			  <div class="layui-col-md4">
				封面
			  	菜名
			  	简介
			  </div>
			</div>
	    </div>
	    <div class="layui-tab-item">1*3</div>
	  </div>
	</div>
	 
	<script>
	layui.use('element', function(){
	  var element = layui.element;
	  
	});
	</script>
		
	<!--中餐--> 
	<div class="layui-tab">
	  <ul class="layui-tab-title">
	    <li class="layui-this">中餐</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show">2*3</div>
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
	    <div class="layui-tab-item layui-show">2*3</div>
	  </div>
	</div>
	<script>
	layui.use('element', function(){
	  var element = layui.element;
	  
	});
	</script>
		
	<!--饮品/甜点-->
	<div class="layui-tab">
	  <ul class="layui-tab-title">
	    <li class="layui-this">饮品</li>
	    <li>甜点</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show">2*3</div>
	    <div class="layui-tab-item">2*3</div>
	  </div>
	</div>
	 
	<script>
	layui.use('element', function(){
	  var element = layui.element;
	  
	});
	</script>
	
	<!--footer-->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</center>
  </body>
</html>
