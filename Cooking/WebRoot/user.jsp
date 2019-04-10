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
	
<!-- 	
	<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
	<link rel="stylesheet" href="css/changeImg.css" > -->
	<link rel="stylesheet" href="layui/css/layui.css">
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<link rel="stylesheet" href="css/about.css" >
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	
	<link rel="icon" type="image/icon" href="assets/images/tabicon.ico">

<link rel="stylesheet" type="text/css" href="">
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,700,700i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,700,700i|Josefin+Sans:700" rel="stylesheet">
<link href="assets/css/main.css" rel="stylesheet">
<link rel="icon" href="assets/images/logo.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	
	<script type="text/javascript">
		function checkPassword(){
			var old_password = $("#old_password").val();
			var u_password = $("#u_password").val();
			var new_password1 = $("#new_password1").val();
			var new_password2 = $("#new_password2").val();
			
			if(old_password != u_password){
				alert("密码输入错误！");
				return false;
			}
			if(new_password1 != new_password2){
				alert("输入密码不一致。");
				return false;
			}
			return true;
		}
	</script>
  </head>
  
  <body>
	<jsp:include page="header2.jsp"></jsp:include>
	
	
	<div id="index">                                           <!-- Index starts here -->
	<div class="container main">
		<div class="row home">
			<div id = "index_left" class="col-md-6 left">
				<img class="img-responsive img-rabbit" src="${pageContext.request.contextPath}/${user.u_img}" />
			</div>
			<div id = "index_right" class="col-md-6 text-center right">
				<div class="logo">
					<h4>${user.u_nickname}</h4>
				</div>
				<p class="home-description">
					${user.u_information}<br />
				</p>
				<center>
				<table>
					<tr><td>电话：</td><td>${user.u_phone }</td></tr>
					<tr><td>邮箱：</td><td>${user.u_email }</td></tr>
					<tr><td>生日：</td><td>${user.u_birthday}</td></tr>
				</table>
				</center>
				<div class="btn-group-vertical custom_btn animated slideinright">
					<div id="about" class="btn btn-rabbit">修改个人资料</div>
					<div id="work" class="btn btn-rabbit">更换密码</div>
					<div id="contact" class="btn btn-rabbit">更换头像</div>
					<div class="btn btn-rabbit"><a href="UserServlet?method=exit">退出</a></div>
				</div>      
			</div>
		</div>
	</div>
</div>


<div id="about_scroll" class="pages ">                      <!-- about strats here  -->
	<div class="container main">
		<div class="row">
			<div class="col-md-6 left" id="about_left">
				<img class="img-responsive img-rabbit" src="assets/images/about.jpg">
			</div>

			<div class="col-md-6 right" id="about_right">
				<a href="UserServlet?method=addUserDate&u_id=${user.u_id }" class="btn btn-rabbit back"> <i class="fa fa-angle-left" aria-hidden="true"></i> 返回 </a>
				<div id="watermark">
					<h2 class="page-title" text-center>修改个人资料</h2>
				</div>
				<form class="form-horizontal" role="form" action="UserServlet?method=editUser" method="post" >
					<input type="hidden" value="${user.u_id }" name="u_id" />
					<table class="table table-hover">
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
						<td><input type="text" id="u_birthday"  class="layui-input" name="u_birthday" value="${user.u_birthday}"></td>
					</tr>
					<tr>
						<td>简介</td>
						<td><textarea rows="5" cols="30" id="u_information" name="u_information">${user.u_information}</textarea></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" class="btn btn-default" value="确认" /></td>
					</tr>
				</table>
			</form>
			</div>
		</div>
	</div>            
</div>                                                                <!-- About ends here -->
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;

  laydate.render({
    elem: '#u_birthday' //指定元素
  });
});
</script>                                                          


<div id="work_scroll" class="pages">                                  <!-- Work starts here -->
	<div class="container main">
		<div class="row">
			<div class="col-md-6" id="work_left">
				<div id="owl-demo" class="owl-carousel owl-theme">
					<div class="item"><img class="img-responsive img-rabbit" src="assets/images/work.jpg"></div>
				</div>
			</div>

			<div class="col-md-6" id="work_right">
				<a href="UserServlet?method=addUserDate&u_id=${user.u_id }" class="btn btn-rabbit back"> <i class="fa fa-angle-left" aria-hidden="true"></i> 返回 </a>
				<div id="watermark">
					<h2 class="page-title" text-center>更换密码</h2>
				</div>
				<form action="UserServlet?method=editPassword" class="form-horizontal" role="form" method="post"  >
					<input type="hidden" value="${user.u_id }" name="u_id" />
					<input type="hidden" value="${user.u_password }" name="u_password" id="u_password" />
					<table  class="table table-hover">
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
						<td><input type="submit"  class="btn btn-default" value="确认"  onclick="return checkPassword();" /></td>
					</tr>
		    	</table>
				</form>
			</div>
		</div>
	</div>    
</div>                                                                 <!-- Work ends here  -->


<div id="contact_scroll" class="pages">                             <!-- Contact starts here -->
	<div class="container main">
		<div class="row">
			<div class="col-md-6 left" id="contact_left">
				<img class="img-responsive img-rabbit" src="assets/images/contact.jpg">
			</div>

			<div class="col-md-6 right" id="contact_right">
				<a href="UserServlet?method=addUserDate&u_id=${user.u_id }" class="btn btn-rabbit back"> <i class="fa fa-angle-left" aria-hidden="true"></i>返回 </a>
				<div id="watermark">
					<h2 class="page-title" text-center>更换头像</h2>
				</div>
				<form action="UserServlet?method=editImg" class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
					<input type="hidden" value="${user.u_id }" name="u_id"  />
					<table  class="table table-hover">
						<tr><td>请选择文件：</td><td><input type="file" name="u_img" id="u_img" /></td></tr>
						<tr>
							<td></td>
							<td><input type="submit"  class="btn btn-default" value="确认" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	
</div>                                                              <!-- Contact ends here -->


<center>
<h3>我的收藏</h3>
<c:forEach items="${shoucang}" var="sc">
	<c:forEach items="${userRecipe}" var="ur">
		<c:if test="${sc.r_id == ur.r_id }">
			<a href="RecipeServlet?method=findRecipeById&r_id=${ur.r_id}" ><img style="width:100px;height:100px;" src="${pageContext.request.contextPath}/${ur.r_img }" ></a>
		</c:if>
	</c:forEach>
</c:forEach>
</center>

<script src="assets/js/jquery-3.1.0.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/script.js"></script>
<jsp:include page="footer2.jsp"></jsp:include>			

  </body>
</html>
