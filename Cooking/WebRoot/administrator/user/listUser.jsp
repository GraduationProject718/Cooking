<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<style type="text/css">
		body{
			background: none;
		}
		.layui-form-pane{
			padding-top:20px;
			padding-left:20px;
		}
		.layui-form-pane .layui-form-label{
			background-color: #1e9fff;
			margin-left: 20px;
		}
		.layui-table td, .layui-table th{
			padding:9px;
		}
		.layui-table thead tr{
			background-color:#1E9FFF;
		}
		
		.layui-input{
			width:200px;
		}
		.page{
			margin:0 auto;
		}
		.videos{
			width:410px;height:250px;margin-top:10px;margin-right:20px;
		}
	</style>
	
	<script type="text/javascript">
		function del(u_id){
			if(confirm("是否确认删除")){
				location="UserServlet?method=del&u_id="+u_id;
			}else{
				return false;
			}
		}
	</script>
  </head>
  
  <body>
	<div class="layui-form layui-form-pane">
	<div class="layui-form-item">
	<table class="layui-table">
	  <colgroup>
	  	<col width="50">
	  	<col>
	    <col width="150">
	    <col width="150">
	    <col width="150">
	    <col width="150">
	    <col width="100">
	  </colgroup>
	  <thead>
	    <tr>
	      <th>序号</th>
	      <th>账号</th>
	      <th>昵称</th>
	      <th>电话</th>
	      <th>邮箱</th>
	      <th>生日</th>
	      <th>删除</th>
	    </tr> 
	  </thead>
	  <tbody>
	    <c:forEach items="${page.list}" var="u" varStatus="status">
	    <tr>
	    	<td>${status.count}</td>
			<td>${u.u_account} </td>
			<td>${u.u_nickname } </td>
			<td>${u.u_phone } </td>
			<td>${u.u_email } </td>
			<td>${u.u_birthday } </td>
			<td>
				<button class="layui-btn layui-btn-normal" onclick="del('${u.u_id}');" ><i class="layui-icon">&#xe640;</i></button>
			</td>
	    </tr>
	    </c:forEach>
	  </tbody>
	</table>
  	<jsp:include page="../pageFile.jsp"></jsp:include>
	</div>
	</div>
  </body>
</html>
