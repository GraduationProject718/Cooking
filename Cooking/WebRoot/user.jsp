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
	<center>
	<div class="container">
	<jsp:include page="head.jsp"  flush="true"></jsp:include>
		头像<br />
		昵称:${user.u_nickname}<br />
		简介：${user.u_information}<br />
		电话：${user.u_phone }<br />
		邮箱：${user.u_email }<br />
		<input type="hidden" name="uid" id="uid" value="${user.u_id}"/>
		<input type="button" data-toggle="modal" data-target="#editUser" value="修改个人信息" />
		<input type="button" data-toggle="modal" data-target="#editPassword" value="修改密码" />
		
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
	</center>
	
	<!-- 修改个人信息 -->
	<form action="servlet/UserServlet?flag=editUser" method="post">
	<div class="modal fade" id="editUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">修改个人信息</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
				</div>
				<div class="modal-body">
					<input type="hidden" name="u_id" id="u_id" value="${user.u_id}"/>
					昵称:<input type="text" name="u_nickname" id="u_nickname" value="${user.u_nickname}"/><br />
					简介:<input type="text" name="u_information" id="u_information" value="${user.u_information}"/><br />
					电话:<input type="text" name="u_phone" id="u_phone" value="${user.u_phone}"/><br />
					邮箱:<input type="text" name="u_email" id="u_email" value="${user.u_email}"/><br />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="submit" class="btn btn-primary">确定</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	</form>
	
	<!-- 修改密码 -->
	<form action="servlet/UserServlet?flag=editPassword" method="post">
	<div class="modal fade" id="editPassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">修改密码</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
				</div>
				<div class="modal-body">
					<input type="hidden" name="u_id" id="u_id" value="${user.u_id}"/>
					旧密码:<input type="password" name="u_oldPassword" id="u_oldPassword"/><br />
					新密码:<input type="password" name="u_newPassword" id="u_newPassword" /><br />
					新密码:<input type="password" name="u_confirmPassword" id="u_confirmPassword" /><br />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="submit" class="btn btn-primary">确定</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	</form>
  </body>
</html>
