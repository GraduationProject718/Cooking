<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
	<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>

  </head>
  
  <body>
  	<div class="container">
   	<div style="background-image: url('images/bg.jpg');background-size: 100%;width:85%;height:70%;padding:50px;">
   	<form class="layui-form" action="VideosServlet?method=addVideos" method="post" enctype="multipart/form-data">
	  	<%-- <input type="hidden" name="v_UId" id="v_UId" value="${user.u_id }"> --%>
	  	<input type="hidden" name="v_UId" id="v_UId" value="0" />
	  <div class="layui-form-item">
	    <label class="layui-form-label" style="width:100px;"><b>视频名称</b></label>
	    <div class="layui-input-block">
	      <input type="text" style="width:300px;" name="v_name"  id="v_name" required  lay-verify="required" placeholder="请输入视频名称" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label" style="width:100px;margin:20px;"><b>文件选择</b></label>
	    <div class="layui-input-inline">
	      <input type="file" name="v_url" id="v_url" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
	      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
	    </div>
	  </div>
	</form>
	 </div>
   	</div>
		
  </body>
</html>
