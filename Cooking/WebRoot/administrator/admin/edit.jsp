<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	
	<script type="text/javascript">
		function check(){
			var old_password = $("#old_password").val();
			var old_password2 = $("#old_password2").val();
			var new_password = $("#new_password").val();
			var new_password2 = $("#new_password2").val();
			if(old_password != old_password2){
				alert("旧密码输入错误。");
				return false;
			}
			if(new_password != new_password2){
				alert("两次密码输入不一致。");
				return false;
			}
			return true;
		}
	</script>

  </head>
  
  <body>
    <form action="AdminServlet?method=edit" method="post">
    	<input type="hidden" name="old_password2" id="old_password2" value="${admin.a_password }">
    	<input type="hidden" name="a_id" id="a_id" value="${admin.a_id }">
    	<table>
    		<tr>
    			<td>旧密码</td>
    			<td><input type="password" name="old_password" id="old_password"></td>
    		</tr>
    		<tr>
    			<td>新密码</td>
    			<td><input type="password" name="new_password" id="new_password" ></td>
    		</tr>
    		<tr>
    			<td>新密码</td>
    			<td><input type="password" name="new_password2" id="new_password2" ></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><button type="submit" onclick="return check()" >确定</button> </td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
