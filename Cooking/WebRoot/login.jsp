<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" rel="stylesheet" href="css/user.css">
	<link type="text/css" rel="stylesheet" href="css/about.css">
	
	<script type="text/javascript" src="Javascript/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/img_ver.js"></script>
	<style type="text/css">
		.footer{
			margin-top: 0px;
		}
	</style>
</head>

<body >
	<jsp:include page="header2.jsp"></jsp:include>
 			<div style="background-image: url('images/login.jpg');background-repeat: no-repeat;background-size: 100%;height:750px;" >
			<div class="logo-box" style="margin:auto 200;">
				<div class="login" style="">
					<div class="bxs-row" style="text-align:center;">
						<span class="tips" style="font-size:30px;"><b>用户登录</b></span>
					</div>

					<div class="bxs-row">
						<input type="text" class="username" id="u_account" name="u_account"
							required="required" placeholder="请输入注册账号">
					</div>

					<div class="bxs-row">
						<input type="password" class="password" id="u_password" name="u_password"
							required="required" placeholder="请输入密码">
					</div>

					<div class="bxs-row">
						<input type="submit" class="submit btn" value="登录">
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
	             'images/ver-1.jpg',
	             'images/ver-2.jpg',
	             'images/ver-3.jpg'
	         ],
	         success:function () {
	         	 var u_account = $("#u_account").val();
	         	 var u_password = $("#u_password").val()
	         	 location = "UserServlet?method=login&u_account="+u_account+"&u_password="+u_password;
	         },
	         error:function () {
	             //alert('错误什么都不执行')
	         }
	     });
	     $(".submit").on('click',function () {
	         if($("#u_account").val() == '' || $("#u_password").val() == '') {
	               $(".tips").html('请输入有效信息！');
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