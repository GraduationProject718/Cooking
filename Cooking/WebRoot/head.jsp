<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>

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

</style>
	<div class="layui-container">  
	  <div class="layui-row">
	    <div class="layui-col-md4">
	      	<img src="images/Cooking.png">
	    </div>

	    <div class="layui-col-md4 layui-col-md-offset4">
	    	<c:if test="${user.u_nickname == null}">
	    	<div>
	     		<button data-toggle="modal" data-target="#login">登录</button>
	     		<button data-toggle="modal" data-target="#register">注册</button>
	     	</div>
	     	</c:if>
	     	<c:if test="${user.u_nickname != null}">
	     	<div>
	     		<ul class="layui-nav">
				  <li class="layui-nav-item">
				    <a href="user.jsp">个人中心<span class="layui-badge-dot"></span></a>
				  </li>
				  <li class="layui-nav-item">
				    <a href="user.jsp"><img src="//t.cn/RCzsdCq" class="layui-nav-img">${user.u_nickname}</a>
				    <dl class="layui-nav-child">
				      <dd><a href="addRecipe.jsp">发布菜谱</a></dd>
				      <dd><a href="addArticle.jsp">发布文章</a></dd>
				      <dd><a href="javascript:;">发布视频</a></dd>
				    </dl>
				  </li>
				</ul>
	     	</div>
	     	</c:if>
	    </div>
	  </div>
	</div>
	<!--菜单-->
	<ul class="layui-nav" lay-filter="">
	<li class="layui-nav-item"><a href="">首页</a></li>
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
	<li class="layui-nav-item"><a href="">饮品/甜点</a></li>
	<li class="layui-nav-item"><a href="servlet/ArticleServlet?flag=healthAndWellness">健康与养生</a></li>
	<li class="layui-nav-item"><a href="">视频中心</a></li>
	</ul>
	
	<script>
	layui.use('element', function(){
	var element = layui.element;
	
	});
	</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<!-- 登录 -->
<form action="servlet/UserServlet?flag=login" method="post">
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">登录</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
			</div>
			<div class="modal-body">
				账号:<input type="text" name="u_account" /><br />
				密码:<input type="password" name="u_password" /><br />
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary">登录</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</form>
<!-- 注册 -->
<form action="servlet/UserServlet?flag=register" method="post">
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">注册</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<table>
					<tr>
						<td>账号</td>
						<td><input type="text" name="u_account" id="u_account" /></td>
					</tr>
					<tr>
						<td>密码</td>
						<td><input type="password" name="u_password" id="u_password" /></td>
					</tr>
					<tr>
						<td>昵称</td>
						<td><input type="text" name="u_nickname" id="u_nickname" /></td>
					</tr>
					<tr>
						<td>手机号码</td>
						<td><input type="text" name="u_phone" id="u_phone" /></td>
					</tr>
					<tr>
						<td>邮箱</td>
						<td><input type="text" name="u_email" id="u_email" /></td>
					</tr>
					<tr>
						<td>简介</td>
						<td><input type="text" name="u_information" id="u_information" /></td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary">注册</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</form>

