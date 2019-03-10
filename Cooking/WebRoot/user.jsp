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
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<link rel="stylesheet" href="css/index.css" >
	<link rel="stylesheet" href="css/changeImg.css" >
	<script type="text/javascript">
		/* 我的文章 */
		$(function(){
			var u_id = $("#uid").val();
			$.post("servlet/ArticleServlet?flag=myArticle",{"u_id":u_id},function(data){
				
			},"");	
		});
	</script>
  </head>
  
  <body>
	<div class="container">
	<jsp:include page="head.jsp"  flush="true"></jsp:include>
	
	<!-- 个人信息 -->
	<div class="layui-tab">
	  <ul class="layui-tab-title">
	    <li class="layui-this">个人信息 </li>
	    <li>修改个人信息</li>
	    <li>修改密码</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show">
	    	头像<img style="width:50px; height:50px;" src="${pageContext.request.contextPath}/${user.u_img}"><br />
			昵称:${user.u_nickname}<br />
			简介：${user.u_information}<br />
			电话：${user.u_phone }<br />
			邮箱：${user.u_email }<br />
	    </div>
	    <div class="layui-tab-item">
			<p class="upload_view" id="view"><img style="width:60px; height:60px;"  src="${pageContext.request.contextPath}/${user.u_img}"> </p>
			<button class="open">修改头像</button>
			<div id="upload_D">
				<div class="upload_frame">
					<div class="upload_title">
						<span class="upload_title_left">请选择图片</span>
						<span class="upload_title_right"><img src="images/x.jpg"></span>
					</div>
					<div class="upload_fileBtn">
						图片上传
						<input type="file" id="file"/>
						<label for="file">选择图片</label>
					</div>
					<div class="upload_content">
						<div id="clipArea"></div>
						<div class="upload_content_right">
							<p class="upload_view"></p>
							<button id="clipBtn">保存修改</button>
							<label for="file">重新选图片</label>
						</div>
					</div>
				</div>
			</div>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.js"></script>
			<script src="js/changeImg.js"></script>
			<script src="js/iscroll-zoom.js"></script>
			<script src="js/hammer.js"></script>
			<script src="js/lrz.all.bundle.js"></script>
			<script src="js/jquery.photoClip.min.js"></script>
			
			<table>
				<tr>
					<td>昵称</td>
					<td><input type="text" id="u_nickname" name="u_nickname" value="${user.u_nickname}"></td>
				</tr>
				<tr>
					<td>电话</td>
					<td><input type="text" id="u_phone" name="u_phone" value="${user.u_phone}"></td>
				</tr>
				<tr>
					<td>邮箱</td>
					<td><input type="text" id="u_email" name="u_email" value="${user.u_email}"></td>
				</tr>
				<tr>
					<td>生日</td>
					<td><input type="text" id="u_birthday" name="u_birthday" value="${user.u_birthday}"></td>
				</tr>
				<tr>
					<td>简介</td>
					<td><textarea rows="5" cols="30" id="u_information" name="u_information">${user.u_information}</textarea></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="确认" /></td>
				</tr>
			</table>
			
	    </div>
	    <div class="layui-tab-item">
	    	<table>
	    		<tr>
	    			<td>旧密码</td>
	    			<td><input type="password" id="old_password" name="old_password" /></td>
	    		</tr>
	    		<tr>
	    			<td>新密码</td>
	    			<td><input type="password" id="new_password1" name="new_password1" /></td>
	    		</tr>
	    		<tr>
	    			<td>新密码</td>
	    			<td><input type="password" id="new_password2" name="new_password2" /></td>
	    		</tr>
	    		<tr>
					<td></td>
					<td><input type="submit" value="确认" /></td>
				</tr>
	    	</table>
	    </div>
	  </div>
	</div>
	
	<!-- 我的菜谱 -->
	<div class="layui-tab">
	  <ul class="layui-tab-title">
	    <li class="layui-this">我的菜谱</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show">2*3</div>
	  </div>
	</div>
		 
	<!-- 我的文章 -->
	<div class="layui-tab">
	  <ul class="layui-tab-title">
	    <li class="layui-this">我的文章</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show" id="myArticle">
			<c:forEach items="${myArticle}" var="a">
				${a.a_title} ${a.a_time}<br />
			</c:forEach>
		</div>
	  </div>
	</div>
		 
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
	
	<jsp:include page="footer.jsp"></jsp:include>			
	</div>
	
  </body>
</html>
