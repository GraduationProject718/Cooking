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
    
    <title>食谱查看</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- <link rel="stylesheet" href="css/index.css"> -->

	<link href="css/about.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="Javascript/jquery.js"></script>
	<script type="text/javascript" src="Javascript/jquery_2.js"></script>
	<script type="text/javascript" src="Javascript/jquery.jcarousel.min.js"></script>
	<script type="text/javascript" src="Javascript/jquery.pikachoose.min.js"></script>
	<script type="text/javascript" src="Javascript/jquery.touchwipe.min.js"></script>
	<script type="text/javascript" src="Javascript/jq_scroll.js"></script>
	<script type="text/javascript">
		function checkLogin(u_id){
			if(u_id == "" || u_id == null){
				alert("请先登录！");
				return false;
			}
			return true;
		}
	</script>
	
  </head>
  
  <body>
    <jsp:include page="header2.jsp"></jsp:include>
    
    <div class="banner">
	<div class="xian_2"></div>
	<img src="images/banner_1.png">
    <div class="title_1"><div class="kk"><h1>特色美食</h1></div></div>
</div>
<div class="news_del">
	<div class="main">
    	<h3>${recipe.r_name }</h3>
        <h6>发布时间：${recipe.r_time }</h6>
		<form action="ShouCangServlet?method=add" method="post">
			<input type="hidden" value="${recipe.r_id }" name="r_id" id="r_id" />
			<input type="hidden" value="${user.u_id }" name="u_id" id="u_id" />
			<input type="submit" value="收藏"  onclick="return checkLogin('${user.u_id}');" />
		</form>
        <div class="pic_del">
            <div class="pikachoose">
    			<ul id="pikame">
        			<li><img  src="${pageContext.request.contextPath}/${recipe.r_img }"/></li>
    			</ul>
			</div>
        </div>
        
        <div class="act">
        	<p>【菜 名】  <span style="color:#d7000f;">${recipe.r_name }</span></p>
			<p>【原 料】 ${recipe.r_material }</p>
			<p>【做 法】 ${recipe.r_practice }</p>
        </div>
        <p>${recipe.r_information }</p>
    </div>
    <div class="clearfix"></div>
</div>
		<form action="EvaluateServlet?method=add" method="post">
 			<input type="hidden" name="r_id" id="r_id" value="${recipe.r_id }" />
 			<input type="hidden" name="u_id" id="u_id" value="${user.u_id}" />
 			评论<textarea rows="10" cols="100" name="e_content" id="e_content"></textarea>
 			<input type="submit" value="提交" onclick="return check('${user.u_id}')" />
 		</form>
 		评论内容：
 		<c:forEach items="${evaluate}" var="e">
 			${e.e_content }${e.e_time }<br /><br />
 		</c:forEach>
 		<script type="text/javascript">
 			function check(u_id){
 				if(u_id == "" || u_id == null){
 					alert("请登录后再评论！");
 					return false;
 				}
 				return true;
 			}
 		</script>
     <jsp:include page="footer2.jsp"></jsp:include>
     
     
     <script type="text/javascript">
	$(document).ready(function (){
        $("#pikame").PikaChoose({carousel:true, carouselVertical:true});
	});
	
		$('.small').each(function(){
 //设置显示获取字符串的字数  这个根绝要求 看需要大概显示几行
    var maxwidth=25;   
    if($(this).text().length > maxwidth){
         //截取字符串
        $(this).text($(this).text().substring(0,maxwidth));
        //多余的用省略号显示
        $(this).html($(this).html()+'...');
    	}
	});
	
	$(".in_menu_1").hide();
	$(".in_menu li").mouseenter(
		function(){
			$(this).children(".in_menu_1").show();	
		}
	)
	$(".in_menu li").mouseleave(
		function(){
			$(this).children(".in_menu_1").hide();	
		}
	)
	
	$(document).ready(function(){
        $("#scrollDiv").Scroll({line:1,speed:500,timer:3000,up:"but_up",down:"but_down"});
});
</script>
  </body>
</html>
