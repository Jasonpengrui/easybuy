<%@page contentType="text/html" isELIgnored="false"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib  uri="http://shiro.apache.org/tags"  prefix="shiro" %>
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

<style type="text/css">
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
<script src="${app}/staticfile/js/jquery.js"></script>
<script src="${app}/staticfile/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
	<header>
 <h1><img src="/staticfile/images/admin_logo.png"/></h1>
 <ul class="rt_nav">
   <li><a href="/back/logout.action" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="/back/home.action">起始页</a></h2>
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
   
   <shiro:hasPermission name="商品管理">
  <li>
   <dl>
    <dt>商品管理</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="/back/product/prodList" class="active">商品列表</a></dd>
   </dl>
  </li>
  </shiro:hasPermission>
    <!-- shiro -->
    <shiro:hasPermission name="订单管理">
  <li>
   <dl>
    <dt>订单信息管理</dt>
    <dd><a href="/back/order/oroderList">订单列表查询</a></dd>

   </dl>
  </li>
  </shiro:hasPermission>
  
  <shiro:hasPermission name="用户管理">
  <li>
   <dl>
    <dt>用户管理</dt>
    <dd><a href="/back/user/userList">用户列表</a></dd>
	
   </dl>
  </li>
  </shiro:hasPermission>
  
  <shiro:hasPermission name="管理员管理">
  <li>
   <dl>
    <dt>管理员管理</dt>
    <dd><a href="/back/userpowder/adminInsert">新建管理员</a></dd>
    <dd><a href="/back/userpowder/powderSet">管理员权限设置</a></dd>
   </dl>
  </li>
  </shiro:hasPermission>
  
  <shiro:hasPermission name="在线统计">
  <li>
   <dl>
    <dt>在线统计</dt>
    <dd><a href="/back/tongji">类别统计</a></dd>
    <dd><a href="/back/tongji1">收藏统计</a></dd>
   </dl>
  </li>
  </shiro:hasPermission>

 </ul>
</aside>

	<section class="rt_wrap content mCustomScrollbar">
		<div class="rt_content">
			<div class="page_title">
				<h2 class="fl">订单列表示例</h2>

			</div>
			<!--  <section class="mtb">
       <select class="select">
        <option>订单状态</option>
        <option>待付款</option>
        <option>待发货</option>
        <option>待评价</option>
       </select>
       <input type="text" class="textbox textbox_225" placeholder="输入订单编号或收件人姓名/电话..."/>
       <input type="button" value="查询" class="group_btn"/>
      </section> -->
			<table class="table">
				<tr>
					<th>订单编号</th>
					<th>收件人</th>
					<th>订单金额</th>
					<th>收件人地址</th>
					<th>收件人电话</th>
					<th>支付状态</th>
					<th>下单时间</th>
					<th>操作</th>
				</tr>

				<c:forEach items="${orders}" var="o" varStatus="status">
					<tr>
						<td class="center"><a
							href="/back/order/toview?orderId=${o.orderId}">${o.orderId}</a></td>

						<td class="center">${o.user.userInfo.realname}</td>
						<td class="center">${o.money}</td>
						<td class="center">${o.user.userInfo.address}</td>
						<td class="center">${o.user.userInfo.telephone}</td>
						<td class="center"><c:if test="${o.paystate==1}">
								<font color="green">已支付</font>
							</c:if> <c:if test="${o.paystate==0}">
								<font color="red">未支付</font>
							</c:if></td>
						<td class="center"><fmt:formatDate value="${o.createTime}"
								pattern="yyyy-MM-dd" /></td>
						<td class="center"><a
							href="/back/order/toview?orderId=${o.orderId}" title="查看订单"
							class="link_icon" target="_self">&#118;</a> <a
							href="/back/order/todelete?orderId=${o.orderId}" title="删除"
							class="link_icon">&#100;</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</section>
</body>
</html>