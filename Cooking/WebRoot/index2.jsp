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
    
    <title>烹饪技术学习网</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="layui/css/layui.css">
	<link rel="stylesheet" href="css/index.css">
	<script type="text/javascript" src="layui/layui.all.js"></script>
	
	
	<style type="text/css">
		.layui-tab{
			width:80%;
		}
		.recipeImg{
			width:410px;height:250px;margin-right:20px;
		}
	</style>
  </head>
  
  <body>
  	<div class="container">
   	<jsp:include page="head.jsp"></jsp:include>
		 
	<!--滚动图片-->
	<div class="layui-carousel" id="test1" >
	  <div carousel-item>
	    <div><img src="images/1.jpg"></div>
	    <div><img src="images/2.jpg"></div>
	    <div><img src="images/3.jpg"></div>
	    <div><img src="images/4.jpg"></div>
	    <div><img src="images/5.jpg"></div>
	  </div>
	</div>
	
	<div style="width:27%;height:500px;border:1px solid black;margin-top:-500px;margin-left:58%">
		新闻公告<br />
		<c:forEach items="${gonggao }" var="gg">
			<a href="ArticleServlet?method=findArticleById&a_id=${gg.a_id }">${gg.a_title }</a><br />
		</c:forEach>
	</div>
	
	<script type="text/javascript" src="layui/layui.all.js"></script>
	<script>
	layui.use('carousel', function(){
	  var carousel = layui.carousel;
	  //建造实例
	  carousel.render({
	    elem: '#test1'
	    ,width: '56%' //设置容器宽度
	    ,height:'500px' // 设置容器高度
	    ,arrow: 'always' //始终显示箭头
	    //,anim: 'updown' //切换动画方式
	  });
	});
	</script> 
	
	
	
	<!--推荐/热门-->
	<div class="layui-tab">
	  <ul class="layui-tab-title">
	    <li class="layui-this">推荐</li>
	    <li>热门</li>
	    <li>最新</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show">
	    	<div class="layui-row layui-col-space10">
	    	<table>
	    		<tr>
	    		<c:forEach items="${tuijian}" var="r" varStatus="status">
	    			<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
	    		</c:forEach>
	    		</tr>
	    	</table>
			</div>
	    </div>
	    <div class="layui-tab-item">
	    	<table>
	    	<tr>
			<c:forEach items="${remen}" var="r" varStatus="status">
				<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
			 </c:forEach>
			</tr>
	    	</table>
		</div>
	    <div class="layui-tab-item">
	    <table>
	    <tr>
		<c:forEach items="${zuixin}" var="r" varStatus="status">
			<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
		 </c:forEach>
		 </tr>
    	</table>
		</div>
	  </div>
	</div>
		
	<!--中餐--> 
	<div class="layui-tab">
	  <ul class="layui-tab-title">
	    <li class="layui-this">中餐</li>
	    <li>西餐</li>
	    <li>饮品</li>
	    <li>甜点</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show">
	    <table>
	    <tr>
		<c:forEach items="${zhongcan}" var="r" varStatus="status">
			<c:if test="${status.count < 4 }">
				<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
		 	</c:if>
		 </c:forEach>
		</tr>
		<tr>
		<c:forEach items="${zhongcan}" var="r" varStatus="status">
			<c:if test="${status.count >= 4 }">
				<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
		 	</c:if>
		 </c:forEach>
		</tr>
    	</table>
		</div>
		
		<div class="layui-tab-item">
			<table>
		    <tr>
			<c:forEach items="${xican}" var="r" varStatus="status">
				<c:if test="${status.count < 4 }">
					<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
			 	</c:if>
			 </c:forEach>
			</tr>
			<tr>
			<c:forEach items="${xican}" var="r" varStatus="status">
				<c:if test="${status.count >= 4 }">
					<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
			 	</c:if>
			 </c:forEach>
			</tr>
	    	</table>
		</div>
		
		<div class="layui-tab-item">
			 <table>
		    <tr>
			<c:forEach items="${yinpin}" var="r" varStatus="status">
				<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
			 </c:forEach>
			 </tr>
	    	</table>
		</div>
		
		<div class="layui-tab-item">
			  <table>
		    <tr>
			<c:forEach items="${tiandian}" var="r" varStatus="status">
				<td><a href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}"><img class="recipeImg" src="${pageContext.request.contextPath}/${r.r_img }"><br><center>${r.r_name }</center><br /></a></td>
			 </c:forEach>
			 </tr>
	    	</table>
		</div>
		
	  </div>
	</div>
	
	
	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
  </body>
</html>
