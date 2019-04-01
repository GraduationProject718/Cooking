<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta charset="utf-8">
<title>烹饪技术学习网</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
<!-- <link href="css/about.css" rel="stylesheet" type="text/css"> -->
<script type="text/javascript" src="Javascript/jquery.js"></script>
<script type="text/javascript" src="Javascript/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Javascript/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="Javascript/Carousel.js"></script>
<link rel="stylesheet" href="layui/css/layui.css">
<script type="text/javascript" src="layui/layui.all.js"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

 <div class="banner">
  	<img src="images/2.jpg">
    <img src="images/3.jpg">
    <img src="images/4.jpg">
    <div class="clearfix"></div>        
  	<ul>
   		<li id="red"></li>
       <li></li>
       <li></li>
    </ul>
   	<div class="zuo"></div>
       <div class="you"></div>
       <div class="clearfix"></div>
       
    </div>
 
 	<!-- 推荐 热门 最新 -->
    <div class="food">
    	<div class="title_1"><div class="kk"><h1>特色美食</h1></div></div>
        <div class="contont">
        	<ul>
            	<li id="red">推荐</li>
            	<li>热门</li>
            	<li>最新</li>
                <div class="clearfix"></div>
        	</ul>
            <div class="pro">
	            <c:forEach items="${tuijian}" var="r" varStatus="status">
	            	<a class="no_margin" href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}" >
	                	<img src="${pageContext.request.contextPath}/${r.r_img }" >
	                    <div class="black"></div>
	                    <div class="des">${r.r_name }</div>
	                </a>
		   		</c:forEach>
                <div class="clearfix"></div>
            </div>
            <div class="pro">
            	<c:forEach items="${remen}" var="r" varStatus="status">
            		<a class="no_margin" href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}">
	                	<img src="${pageContext.request.contextPath}/${r.r_img }" />
	                    <div class="black"></div>
	                    <div class="des">${r.r_name }</div>
	                </a>
				 </c:forEach>
                <div class="clearfix"></div>
            </div>
            <div class="pro">
                <c:forEach items="${zuixin}" var="r" varStatus="status">
                	 <a class="no_margin" href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}">
	               		<img src="${pageContext.request.contextPath}/${r.r_img }" />
	                    <div class="black"></div>
	                	<div class="des">${r.r_name }</div>
	                </a>
				 </c:forEach>
                <div class="clearfix"></div>
            </div> 
        </div>
    </div>
    
    <!-- 中餐 西餐 饮品 甜点 -->
       <div class="food">
    	<div class="title_1"><div class="kk"><h1>特色美食</h1></div></div>
        <div class="contont2">
        	<ul>
        		<li id="red">中餐</li>
            	<li>西餐</li>
            	<li>饮品</li>
            	<li>甜点</li>
                <div class="clearfix"></div>
        	</ul>
            <div class="pro2" >
            	<c:forEach items="${zhongcan}" var="r" varStatus="status">
					<a class="no_margin" href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}" >
	               		<img src="${pageContext.request.contextPath}/${r.r_img }" />
	                    <div class="black"></div>
	                	<div class="des">${r.r_name }</div>
	                </a>
				 </c:forEach>          
                <div class="clearfix"></div>
            </div>
            <div class="pro2">
            	<c:forEach items="${xican}" var="r" varStatus="status">
            		 <a class="no_margin" href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}">
	               		<img src="${pageContext.request.contextPath}/${r.r_img }" >
	                    <div class="black"></div>
	                	<div class="des">${r.r_name }</div>
	                </a>
				 </c:forEach>
                <div class="clearfix"></div>
            </div>
            <div class="pro2">
            	<c:forEach items="${yinpin}" var="r" varStatus="status">
            		 <a class="no_margin" href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}" >
	               		<img src="${pageContext.request.contextPath}/${r.r_img }" >
	                    <div class="black"></div>
	                	<div class="des">${r.r_name }</div>
	                </a>
				 </c:forEach>
                <div class="clearfix"></div>
            </div>
            <div class="pro2">
            	<c:forEach items="${tiandian}" var="r" varStatus="status">
            		<a class="no_margin" href="RecipeServlet?method=findRecipeById&r_id=${r.r_id}" >
	               		<img src="${pageContext.request.contextPath}/${r.r_img }" >
	                    <div class="black"></div>
	                	<div class="des">${r.r_name }</div>
	                </a>
				 </c:forEach>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    
    
    <div class="news">
    	<div class="title_1"><div class="kk"><h1>新闻公告</h1></div></div>
        <div class="news_contont">
        	<c:forEach items="${gonggao }" var="gg" varStatus="status">
        		<c:if test="${status.count < 5 }">
        			<div class="box1" onClick="link('${gg.a_id }')" >
		            	<a href="ArticleServlet?method=findArticleById&a_id=${gg.a_id }"><img src="${pageContext.request.contextPath}/${gg.a_img }"></a>
		                <div class="xinwen">
		                	<span>${gg.a_time }</span>
		                	<a href="news_details.html">${gg.a_title }</a>
		                    <%-- <div class="small_font">${gg.a_content }...</div> --%>
		                </div>
		                <div class="clearfix"></div>
		            </div>
        		</c:if>
        		
        		<%-- <c:if test="${status.count >= 5 }">
        			<div class="box2" onClick="link('${gg.a_id }')" >
		            	<a href="ArticleServlet?method=findArticleById&a_id=${gg.a_id }"><img src="${pageContext.request.contextPath}/${gg.a_img }"></a>
		                <div class="xinwen">
		                	<span>${gg.a_time }</span>
		                	<a href="news_details.html">${gg.a_title }</a>
		                    <div class="small_font">${gg.a_content }...</div>
		                </div>
		                <div class="clearfix"></div>
		            </div>
        		</c:if> --%>
			</c:forEach>
            <div class="clearfix"></div>
        </div>
    </div>
    
    <jsp:include page="footer2.jsp"></jsp:include>
    
<script type="text/javascript">
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
/*轮播图的设置*/
	n = 0;
	$(".banner img").hide().eq(0).show();/*设置轮播图的第一张总是显示，其他图片隐藏*/
 /*设置轮播图定时切换*/
 	setInterval(                       
		function(){
			if(n < $(".banner img").length - 1){
				n = n + 1;
			}
			else{
				n = 0;
			}
			$(".banner img").hide().eq(n).show();
			$(".banner li").eq(n).css("background-color","#d7000f");
			$(".banner li").eq(n).siblings(".banner li").css("background-color","#333");
		},5000	
	) 
	
	$(".you").click(
		function(){
			if(n < $(".banner img").length-1){
				n = n + 1;
			}
			else{
				n = 0;
			}
			$(".banner img").hide().eq(n).show();
			$(".banner li").eq(n).css("background-color","#d7000f");
			$(".banner li").eq(n).siblings(".banner li").css("background-color","#333");
		}
	)
	
	$(".zuo").click(
		function(){
			if(n > 0){
				n = n - 1;
			}
			else{
				n = $(".banner img").length-1;
			}
			$(".banner img").hide().eq(n).show();
			$(".banner li").eq(n).css("background-color","#d7000f");
			$(".banner li").eq(n).siblings(".banner li").css("background-color","#333");
		}
	)
	
	$(".zuo").mouseenter(
		function(){
			$(this).css("background-image","url(images/left_2.png)");	
		}
	)
	
	$(".you").mouseenter(
		function(){
			$(this).css("background-image","url(images/right.png)");	
		}
	)
	
	$(".zuo").mouseleave(
		function(){
			$(this).css("background-image","url(images/left.png)");	
		}
	)
	
	$(".you").mouseleave(
		function(){
			$(this).css("background-image","url(images/right_2.png)");	
		}
	)
	
	$(".banner li").click(
		function(){
			$(".banner img").eq($(this).index()).show()
			$(".banner img").eq($(this).index()).siblings("img").hide()
			$(".banner li").eq($(this).index()).css("background-color","#d7000f");
			$(".banner li").eq($(this).index()).siblings(".banner li").css("background-color","#333");
		}
	)

	$(".pro").hide().eq(0).show()
	$(".pro2").hide().eq(0).show()
	$(".contont li").click(
		function(){
			$(".pro").eq($(this).index()).show();
			$(".pro").eq($(this).index()).siblings(".pro").hide();
			$(".contont li").eq($(this).index()).css({"background-color":"#d7000f","color":"#fff"});
			$(".contont li").eq($(this).index()).siblings(".contont li").css({"background-color":"#fff","color":"#333"});
		}
	)
	
	$(".contont2 li").click(
		function(){
			$(".pro2").eq($(this).index()).show();
			$(".pro2").eq($(this).index()).siblings(".pro2").hide();
			$(".contont2 li").eq($(this).index()).css({"background-color":"#d7000f","color":"#fff"});
			$(".contont2 li").eq($(this).index()).siblings(".contont2 li").css({"background-color":"#fff","color":"#333"});
		}
	)

	$(".pro a").mouseenter(
		function(){
		$(this).children(".black").hide();
		$(this).siblings().children(".black").show(); 
		$(this).children(".des").addClass("red");
		$(this).siblings().children(".des").removeClass("red");				
	})
	
	$(".pro2 a").mouseenter(
		function(){
		$(this).children(".black").hide();
		$(this).siblings().children(".black").show(); 
		$(this).children(".des").addClass("red");
		$(this).siblings().children(".des").removeClass("red");				
	})
	
	$(".pro a").mouseleave(
		function(){
			$(this).children(".black").show();
			$(this).children(".des").removeClass("red");
		}
	)
	
	$(".pro2 a").mouseleave(
		function(){
			$(this).children(".black").show();
			$(this).children(".des").removeClass("red");
		}
	)
	
	$(".box1,.box2").mouseenter(
		function(){
			$(this).addClass("shadow");	
			$(this).find("a").css("color","#d7000f");
		}
	)
	
	$(".box1,.box2").mouseleave(
		function(){
			$(this).removeClass("shadow");	
			$(this).find("a").css("color","#333");
		}
	)
	
	function link(id){  
		window.location.href="ArticleServlet?method=findArticleById&a_id="+id;
	}
	
	$(function () {
      	var datas = [
            {'z-index': 6, 'font-size':16, opacity: 1,   width: 370, height: 350, top: 0,  left: 0   },
            {'z-index': 4, 'font-size':14, opacity: 0.9, width: 307, height: 290, top: 30, left: -170},
            {'z-index': 3, 'font-size':12, opacity: 0.8, width: 243, height: 230, top: 60, left: -310},
            {'z-index': 3, 'font-size':12, opacity: 0.8, width: 243, height: 230, top: 60, left: 437 },
            {'z-index': 4, 'font-size':14, opacity: 0.9, width: 307, height: 290, top: 30, left: 233 },
        ]
        move();
		
        function move() {
            for (var i = 0; i < datas.length; i++) {
                var data = datas[i];
                $('#s_box li').eq(i).css({'z-index':data['z-index'],'font-size':data['font-size']});
                $('#s_box li').eq(i).stop().animate(data, 1200);
            }
        }
		
		$('.prev').on('click', function () {
            var last = datas.pop();
            datas.unshift(last);
            move();
        })
		
		function nextYewu(){
            var first = datas.shift();
            datas.push(first);
            move();
        }
		
		$('.next').on('click', nextYewu);
		 var timer = setInterval(function(){
            nextYewu();
        },5000);
	})
	
	$(function(){
		Carousel.init($("#carousel"));
		$("#carousel").init();
	});
</script>

</body>
</html>
