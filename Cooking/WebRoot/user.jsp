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
	
  </head>
  
  <body>
	<center>
	<div class="container">
	<jsp:include page="head.jsp"></jsp:include>
		昵称:${user.u_nickname}<br />
		简介：${user.u_information}<br />
		电话：${user.u_phone }<br />
		邮箱：${user.u_email }<br />
		<input type="button" value="修改个人信息" />
		<input type="button" value="修改密码" />
		
		<!-- 我的菜谱 -->
		<div class="layui-tab">
		  <ul class="layui-tab-title">
		    <li class="layui-this">我的菜谱</li>
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
		<!-- 我的文章 -->
		<div class="layui-tab">
		  <ul class="layui-tab-title">
		    <li class="layui-this">我的文章</li>
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
		
		<!-- 我的视频 -->	
		<!--中餐--> 
		<div class="layui-tab">
		  <ul class="layui-tab-title">
		    <li class="layui-this">我的视频</li>
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
	<jsp:include page="footer.jsp"></jsp:include>			
	</div>
	</center>
  </body>
</html>
