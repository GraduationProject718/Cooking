<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<script type="text/javascript" src="layui/layui.all.js"></script>

  </head>
  
  <body>
	<div class="layui-container">  
  <div class="layui-row">
	  
	<div class="layui-col-md3">
      你的内容 3/12---left
		<!--left begin-->
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
		<!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
		  <li class="layui-nav-item layui-nav-itemed">
			<a href="javascript:;">默认展开</a>
			<dl class="layui-nav-child">
			  <dd><a href="javascript:;">选项1</a></dd>
			  <dd><a href="javascript:;">选项2</a></dd>
			  <dd><a href="">跳转</a></dd>
			</dl>
		  </li>
		  <li class="layui-nav-item">
			<a href="javascript:;">解决方案</a>
			<dl class="layui-nav-child">
			  <dd><a href="">移动模块</a></dd>
			  <dd><a href="">后台模版</a></dd>
			  <dd><a href="">电商平台</a></dd>
			</dl>
		  </li>
		  <li class="layui-nav-item"><a href="">产品</a></li>
		  <li class="layui-nav-item"><a href="">大数据</a></li>
		</ul>
		<!--left end-->
    </div>
	  
    <div class="layui-col-md9">
      你的内容 9/12---right
	  <!--right begin-->
		<div class="layui-row layui-col-space10">
		  <div class="layui-col-md4">
			1/3
		  </div>
		  <div class="layui-col-md4">
			1/3
		  </div>
		  <div class="layui-col-md4">
			1/3
		  </div>
		</div>
	  <!--right end-->
		
		<!--分页 begin-->
		<div id="test1"></div>
 
		<script src="/static/build/layui.js"></script>
		<script>
		layui.use('laypage', function(){
		  var laypage = layui.laypage;

		  //执行一个laypage实例
		  laypage.render({
			elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
			,count: 50 //数据总数，从服务端得到
		  });
		});
		</script>
		<!--分页 end-->
    </div>
  </div>
</div>
	
	
<script type="text/javascript" src="layui/layui.all.js"></script>
  </body>
</html>
