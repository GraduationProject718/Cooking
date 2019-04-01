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
    
    <title>视频管理</title>
    
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
		.layui-table{
			width:1000px;margin:0 auto;
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
		function del(e_id){
			if(confirm("是否确认删除")){
				location="EvaluateServlet?method=del&e_id="+e_id;
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
	    <col width="100">
	  </colgroup>
	  <thead>
	    <tr>
	      <th>序号</th>		
	      <th>内容</th>
	      <th>时间</th>
	      <th>删除</th>
	    </tr> 
	  </thead>
	  <tbody>
	    <c:forEach items="${page.list}" var="e" varStatus="status">
	    <tr>
	    	<td>${status.count}</td>
			<td>${e.e_content } </td>
			<td>${e.e_time } </td>
			<td>
				<button class="layui-btn layui-btn-normal" onclick="del('${e.e_id}');" ><i class="layui-icon">&#xe640;</i></button>
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
