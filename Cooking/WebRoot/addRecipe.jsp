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
	
	<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layui/layui.all.js"></script>

	<script type="text/javascript">
		$(function(){
			$.post("servlet/RecipeBaseDictServlet?flag=findAll",{},function(data){
				var rbdParent = eval(data);
				var rbdChild = eval(data);
				$.each(rbdParent,function(i,item){
	          		if(rbdParent[i].rbd_parentId == 0){
	    				$("#rbd_parent").append("<option value='"+rbdParent[i].rbd_id+"'>"+rbdParent[i].rbd_name+"</option>");
          			}
          			if(rbdParent[i].rbd_parentId == 1){
          				$("#rbd_child").append("<option value='"+rbdParent[i].rbd_id+"'>"+rbdParent[i].rbd_name+"</option>");
          			}
				});
			},"json");
		});
		
		function getChild(){
			$("#rbd_child").empty();
			var rbd_id =$("#rbd_parent").val();
			$.post("servlet/RecipeBaseDictServlet?flag=findAll",{},function(data){
				var rbdChild = eval(data);
   				$.each(rbdChild,function(j,tem){
     				if(rbd_id == rbdChild[j].rbd_parentId){
     					$("#rbd_child").append("<option value='"+rbdChild[j].rbd_id+"'>"+rbdChild[j].rbd_name+"</option>");
     				}
				});
			},"json");
		}
	</script>
  </head>
  
  <body>
	<center>
  	<div class="container">
   	<jsp:include page="head.jsp"></jsp:include>
   	<form action="servlet/RecipeServlet?flag=addRecipe" method="post">
		<input type="hidden" name="u_id"  id="u_id"value="${user['u_id'] }">
 		<select name="rbd_parent"  id="rbd_parent" onchange="getChild()"></select>
 		<select name="rbd_child" id="rbd_child"></select><br />
 		标题<input type="text" name="r_name"  id="r_name"/><br />
 		简介<textarea rows="3" cols="3" name="r_information"  id="r_information"></textarea><br />
 		材料：<textarea rows="3" cols="3" name="r_material" id="r_material"></textarea><br />
 		做法：<textarea rows="3" cols="3" name="r_practice"  id="r_practice"></textarea><br />
 		<input type="submit" value="提交" />
   	</form>
   	<jsp:include page="footer.jsp"></jsp:include>
   	</div>
   	</center>
		
  </body>
</html>
