<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css" >
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="layui/layui.all.js"></script>
<script type="text/javascript" src="bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>

<style>
.layui-nav .layui-nav-item a{
	font-size: 25px;
}
</style>
	<div class="layui-container">  
	  <div class="layui-row">
	    <div class="layui-col-md9">
	      	<img src="images/Cooking.png">
	    </div>
	    <div class="layui-col-md3">
	     	<button data-toggle="modal" data-target="#login">登录</button>
	     	<button data-toggle="modal" data-target="#register">注册</button>
	    </div>
	  </div>
	</div>
	<!--菜单-->
	<ul class="layui-nav" lay-filter="">
	<li class="layui-nav-item"><a href="">首页</a></li>
	<li class="layui-nav-item layui-this"><a href="javascript:;">中餐</a>
	<dl class="layui-nav-child"> <!-- 二级菜单 -->
	  <dd><a href="">川菜</a></dd>
	  <dd><a href="">徽菜</a></dd>
	  <dd><a href="">鲁菜</a></dd>
	  <dd><a href="">闽菜</a></dd>
	  <dd><a href="">苏菜</a></dd>
	  <dd><a href="">湘菜</a></dd>
	  <dd><a href="">粤菜</a></dd>
	  <dd><a href="">浙菜</a></dd>
	</dl>	
	</li>
	<li class="layui-nav-item"><a href="javascript:;">西餐</a>
	<dl class="layui-nav-child"> <!-- 二级菜单 -->
	  <dd><a href="">英式西餐</a></dd>
	  <dd><a href="">意式大餐</a></dd>
	  <dd><a href="">美式菜肴</a></dd>
	  <dd><a href="">俄式大餐</a></dd>
	  <dd><a href="">法式大餐</a></dd>
	</dl>
	</li>
	<li class="layui-nav-item"><a href="">饮品/甜点</a></li>
	<li class="layui-nav-item"><a href="">健康与养生</a></li>
	<li class="layui-nav-item"><a href="">视频中心</a></li>
	</ul>
	
	<script>
	layui.use('element', function(){
	var element = layui.element;
	
	});
	</script>
	
<!-- 登录 -->
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					模态框（Modal）标题
				</h4>
			</div>
			<div class="modal-body">
				在这里添加一些文本
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<!-- 注册 -->
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					模态框（Modal）标题
				</h4>
			</div>
			<div class="modal-body">
				在这里添加一些文本
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>