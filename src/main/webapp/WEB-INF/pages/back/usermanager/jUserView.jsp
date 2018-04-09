<%@page contentType="text/html" isELIgnored="false"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css"
	href="${app}/staticfile/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="${app}/staticfile/js/jquery.js"></script>
<script src="${app}/staticfile/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${app}/staticfile/js/amcharts.js" type="text/javascript"></script>
<script src="${app}/staticfile/js/serial.js" type="text/javascript"></script>
<script src="${app}/staticfile/js/pie.js" type="text/javascript"></script>

<script>
	(function($) {
		$(window).load(
				function() {

					$("a[rel='load-content']").click(
							function(e) {
								e.preventDefault();
								var url = $(this).attr("href");
								$.get(url, function(data) {
									$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
									//scroll-to appended content 
									$(".content").mCustomScrollbar("scrollTo",
											"h2:last");
								});
							});

					$(".content").delegate(
							"a[href='top']",
							"click",
							function(e) {
								e.preventDefault();
								$(".content").mCustomScrollbar("scrollTo",
										$(this).attr("href"));
							});

				});
	})(jQuery);
</script>
</head>
<body>
	<!--header-->
<header>

 <h1><img src="${app}/staticfile/images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="/back/logout" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="${app}/index.jsp">起始页</a></h2>
  <ul>
    <shiro:hasRole name="2">
 	  <li>
   <dl>

    <dt>基础信息</dt>
    <dd><a href="/back/userinfo/userInfo">管理员基本信息</a></dd>
        <dd><a href="/back/userinfo/toupdate">管理员信息修改</a></dd>
   </dl>
  </li>
 </shiro:hasRole>
 
   <!-- shiro -->
  <li>
  

<shiro:hasPermission name="商品管理">
   <dl>
    <dt>商品管理</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="/WEB-INF/pages/product_list.html" class="active">商品列表</a></dd>
   </dl>
   
   
  </li>
  </shiro:hasPermission>
    <!-- shiro -->
    
    <shiro:hasPermission name="订单管理">
  <li>
   <dl>
    <dt>订单信息管理</dt>
    <dd><a href="/WEB-INF/pages/order_list.html">订单列表查询</a></dd>

   </dl>
  </li>
  </shiro:hasPermission>
  
  <shiro:hasPermission name="用户管理">
  <li>
   <dl>
    <dt>用户管理</dt>
    <dd><a href="/WEB-INF/pages/user_list.html">用户列表</a></dd>
	
   </dl>
  </li>
    </shiro:hasPermission>
    <shiro:hasPermission name="管理员管理">
  <li>
   <dl>
    <dt>管理员管理</dt>
    <dd><a href="/WEB-INF/pages/discharge_statistic.html">新建管理员</a></dd>
    <dd><a href="/WEB-INF/pages/sales_volume.html">管理员权限设置</a></dd>
   </dl>
  </li>
  </shiro:hasPermission>
  <li>
   <dl>
    <dt>在线统计</dt>
    <dd><a href="/back/tongji">类别统计</a></dd>
    <dd><a href="/back/tongji1">收藏统计</a></dd>
   </dl>
  </li>

 </ul>
</aside>

	<style>
.dataStatistic {
	width: 400px;
	height: 200px;
	border: 1px solid #ccc;
	margin: 0 auto;
	margin: 10px;
	overflow: hidden
}

#cylindrical {
	width: 400px;
	height: 200px;
	margin-top: -15px
}

#line {
	width: 400px;
	height: 200px;
	margin-top: -15px
}

#pie {
	width: 400px;
	height: 200px;
	margin-top: -15px
}
</style>
	<section class="rt_wrap content mCustomScrollbar">

		<div class="rt_content">
			<div class="page_title">
				<h2 class="fl">用户详情</h2>
				<a href="#" onclick="window.history.back();" class="fr top_rt_btn add_icon">返回</a>
			</div>
			<ul class="ulColumn2">
				<li><span class="item_name" style="width: 120px;">用户名称:</span>
					<input type="text" class="textbox textbox_225"
					value="${user.username}" readonly="readonly" /></li>

				<li><span class="item_name" style="width: 120px;">用户状态:</span>
					<c:if test="${user.state==1}">
						<font color="green" class="textbox textbox_225">启用</font>
					</c:if> <c:if test="${user.state==0}">
						<font color="red" class="textbox textbox_225">停用</font>
					</c:if></li>
				<li><span class="item_name" style="width: 120px;">用户权限:</span>
					<c:if test="${user.privilege==0}">
						<font color="green" class="textbox textbox_225">普通用户</font>
					</c:if> <c:if test="${user.privilege==1}">
						<font color="red" class="textbox textbox_225">管理员</font>
					</c:if> <c:if test="${user.privilege==2}">
						<font color="red" class="textbox textbox_225">超级管理员</font>
					</c:if></li>
				<li><span class="item_name" style="width: 120px;"
					readonly="readonly">昵称:</span> <input type="text"
					class="textbox textbox_225" value="${user.userInfo.nickname}" /></li>
				<li><span class="item_name" style="width: 120px;"
					readonly="readonly">真实姓名:</span> <input type="text"
					class="textbox textbox_225" value="${user.userInfo.realname}"
					readonly="readonly" /></li>
				<li><span class="item_name" style="width: 120px;">性别:</span>
					<c:if test="${user.userInfo.gender==0 }">
						<font color="red" class="textbox textbox_225" readonly="readonly">女</font>
					</c:if> <c:if test="${user.userInfo.gender==1 }">
						<font color="green" class="textbox textbox_225"
							readonly="readonly">男</font>
					</c:if></li>
				<li><span class="item_name" style="width: 120px;">电子邮箱:</span>
					<input type="email" class="textbox textbox_225"
					value="${user.userInfo.email }" readonly="readonly" /></li>
				<li><span class="item_name" style="width: 120px;">地址:</span> <input
					type="text" class="textbox textbox_225"
					value="${user.userInfo.address}" /></li>
				<li><span class="item_name" style="width: 120px;">手机号码:</span>
					<input type="tel" class="textbox textbox_225"
					value="${user.userInfo.telephone }" readonly="readonly" /></li>
				<li><span class="item_name" style="width: 120px;">生日:</span>
<fmt:formatDate value="${user.userInfo.birthday}" pattern="yyyy-MM-dd"/></li>
			</ul>
		</div>
	</section>
</body>
</html>
