<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户注册</title>


	<link type="text/css" rel="stylesheet" href="css/user.css">
	
	<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<script src="js/img_ver.js"></script>
	
	<link href="css/about.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="Javascript/jquery.js"></script>
	
	<style type="text/css">
		.footer{
			margin-top: 0px;
		}
	</style>
</head>

<body>
	<jsp:include page="header2.jsp"></jsp:include>
		<div style="background-image: url('images/register.jpg');background-repeat: no-repeat;background-size: 100%;height:750px;" >
			<div class="logo-box" style="margin:auto 200;">
				<div class="login" >
					<div class="bxs-row" style="text-align:center;">
						<span class="tips" style="font-size:30px;"><b>用户注册</b></span>
					</div>

					<div class="bxs-row">
						<input type="text" class="username" id="u_account" name="u_account"
							required="required" placeholder="请输入注册账号">
					</div>

					<div class="bxs-row">
						<input type="password" class="password" id="u_password1" name="u_password1"
							required="required" placeholder="请输入密码">
					</div>

					<div class="bxs-row">
						<input type="password" class="password" id="u_password2" name="u_password2"
							required="required" placeholder="请重新输入密码">
					</div>

					<div class="bxs-row">
						<input type="text" class="password" id="u_nickname" name="u_nickname"
							required="required" placeholder="昵称">
					</div>

					<div class="bxs-row">
						<input type="text" class="password" id="u_phone" name="u_phone"
							required="required" placeholder="电话">
					</div>

					<div class="bxs-row">
						<input type="text" class="password" id="u_email" name="u_email"
							required="required" placeholder="邮箱">
					</div>

					<div class="bxs-row">
						<input type="text" class="password" id="u_birthday" name="u_birthday"
							required="required" class="layui-input"
							placeholder="请选择出生日期">
					</div>
					<script type="text/javascript" src="layui/layui.all.js"></script>
					<script>
						layui.use('laydate', function() {
							var laydate = layui.laydate;
							laydate.render({
								elem : '#u_birthday'
							});
						});
					</script>

					<div class="bxs-row">
						<input type="submit" class="submit btn" value="注册" />
					</div>
				</div>

				<div class="verBox">
					<div id="imgVer" style="display:inline-block;"></div>
				</div>
			</div>
			</div>
			<jsp:include page="footer2.jsp"></jsp:include>
			
			
	<script>
	      imgVer({
	         el:'$("#imgVer")',
	         width:'260',
	         height:'116',
	         img:[
	             'images/ver.png',
	             'images/ver-1.png',
	             'images/ver-2.png',
	             'images/ver-3.png'
	         ],
	         success:function () {
	         	 var u_account = $("#u_account").val();
	         	 var u_password = $("#u_password1").val()
	         	 var u_nickname = $("#u_nickname").val()
	         	 var u_phone = $("#u_phone").val()
	         	 var u_email = $("#u_email").val()
	         	 var u_birthday = $("#u_birthday").val()
	         	 location = "UserServlet?method=register&u_account="+u_account+"&u_password="+u_password+"&u_nickname="+u_nickname+"&u_phone="+u_phone+"&u_email="+u_email+"&u_birthday="+u_birthday;
	         },
	         error:function () {
	             //alert('错误什么都不执行')
	         }
	     });
	     $(".submit").on('click',function () {
	         if($("#u_account").val() == '' ||
	          $("#u_password1").val() == ''||
	           $("#u_password2").val() == '' ||
	            $("#u_nickname").val() == '' ||
	             $("#u_phone").val() == '' ||
	              $("#u_email").val() == '' ||
	               $("#u_birthday").val() == '') {
	               $(".tips").html('请输入有效信息！');
	               	return false;
	         }else if($("#u_password1").val() != $("#u_password2").val()){
	         	$(".tips").html('两次密码输入不一致，请重新输入！');
	         	return false;
	         }else {
	             $(".login").css({
	                 "left":"-404px",
	                 "opacity":"0"
	             });
	             $(".verBox").css({
	                 "left":"0",
	                 "opacity":"1"
	             })
	             
	         }
	     })
	</script>
</body>
</html>
