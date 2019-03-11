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

  </head>
  
  <body>
  	<div class="container">
   	<jsp:include page="head.jsp"></jsp:include>
   	<!-- start -->
   	<div style="background-image: url('images/bg.jpg');background-size: 100%;width:85%;">
   	<form class="layui-form" action="RecipeServlet?method=addRecipe" method="post" enctype="multipart/form-data">
   		
		  <div class="layui-form-item">
		    <label class="layui-form-label"><b>菜名</b></label>
		    <div class="layui-input-block">
		    	<input style="width:300px;" type="text" name="r_name"  id="r_name" class="layui-input" autocomplete="off" required  lay-verify="required" placeholder="请输入菜名"/>
		    	
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label"><b>简介</b></label>
		    <div class="layui-input-inline">
		    	<textarea style="width:500px;" placeholder="请输入内容" class="layui-textarea" name="r_information"  id="r_information"></textarea><br />
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label"><b>材料</b></label>
		    <div class="layui-input-inline">
		    	<textarea style="width:500px;" placeholder="请输入内容" class="layui-textarea" name="r_material" id="r_material"></textarea><br />
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label"><b>做法</b></label>
		    <div class="layui-input-inline">
		    	<textarea style="width:500px;" placeholder="请输入内容" class="layui-textarea" name="r_practice"  id="r_practice"></textarea><br />
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label"><b>成品图</b></label>
		    <div class="layui-input-inline">
		    	<input type="file" name="r_img"  id="r_img" class="layui-input" autocomplete="off" required  lay-verify="required"/>
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label"><b>菜系</b></label>
		    <div class="layui-input-block" style="width:400px;">
		      <select name="r_RBDId">
		     	 <c:forEach items="${rbd}" var="r">
		     	 	<c:if test="${r.rbd_parentId != 0 }">
		       			<option value="${r.rbd_id}">${r.rbd_name}</option>
		       		</c:if>
		       </c:forEach>
		     </select>
		    </div>
		  </div>
		   <input type="hidden" name="r_UId" id="r_UId" value="${user.u_id }">
		  <div class="layui-form-item" style="margin: 0px;">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		</form>
		 </div>
   	<!-- end -->
   	<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    return true;
  });
});</script>
   	<jsp:include page="footer.jsp"></jsp:include>
   	</div>
		
  </body>
</html>
