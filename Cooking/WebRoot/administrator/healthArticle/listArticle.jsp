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
    
    <title>文章管理</title>
    
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
	</style>
	
	<script type="text/javascript">
		function delArticle(a_id){
			if(confirm("是否确认删除")){
				location="ArticleServlet?method=delArticle&a_type=health&a_id="+a_id;
			}else{
				return false;
			}
		}
		
		function editArticle(a_id){
			location="ArticleServlet?method=editArticleById&a_type=health&a_id="+a_id;
		}
	</script>
  </head>
  
  <body>
	<div class="layui-form layui-form-pane">
	<div class="layui-form-item">
	
	<table class="layui-table">
	  <colgroup>
	  	<col width="50">
	  	<col width="50">
	    <col>
	    <col width="100">
	    <col width="150">
	  </colgroup>
	  <thead>
	    <tr>
	      <th>序号</th>		
	      <th>封面</th>
	      <th>标题</th>
	      <th>时间</th>
	      <th>操作</th>
	    </tr> 
	  </thead>
	  <tbody>
	    <c:forEach items="${page.list}" var="a" varStatus="status">
	    <tr>
	    	<td>${status.count}</td>
			<td><img style="width:30px;height:30px;" src="${pageContext.request.contextPath}/${a.a_img }"> </td>
			<td>${a.a_title } </td>
			<td>${a.a_time }</td>
			<td>
				<button class="layui-btn layui-btn-normal" onclick="editArticle('${a.a_id}');" ><i class="layui-icon">&#xe642;</i></button>
				<button class="layui-btn layui-btn-normal" onclick="delArticle('${a.a_id}');" ><i class="layui-icon">&#xe640;</i></button>
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
