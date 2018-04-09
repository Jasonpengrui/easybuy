<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${app}/staticfile/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="${app}/staticfile/js/jquery.js"></script>
<script src="${app }/staticfile/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
</script>
</head>
<body>
<!--header-->
<header>
 <h1><img src="${app }/staticfile/images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="login.html" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="${app }/index.jsp">起始页</a></h2>
  <ul>
 
 	  <li>
   <dl>
    <dt>基础信息</dt>
    <dd><a href="/back/userinfo/userInfo">管理员基本信息</a></dd>
        <dd><a href="/back/userinfo/toupdate">管理员信息修改</a></dd>
   </dl>
  </li>
 
 
   <!-- shiro -->
  <li>
  


   <dl>
    <dt>商品管理</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="/WEB-INF/pages/product_list.html" class="active">商品列表</a></dd>
   </dl>
   
   
  </li>
  
    <!-- shiro -->
  <li>
   <dl>
    <dt>订单信息管理</dt>
    <dd><a href="/WEB-INF/pages/order_list.html">订单列表查询</a></dd>

   </dl>
  </li>
  <li>
   <dl>
    <dt>用户管理</dt>
    <dd><a href="/WEB-INF/pages/user_list.html">用户列表</a></dd>
	
   </dl>
  </li>
  <li>
   <dl>
    <dt>管理员管理</dt>
    <dd><a href="/WEB-INF/pages/discharge_statistic.html">新建管理员</a></dd>
    <dd><a href="/WEB-INF/pages/sales_volume.html">管理员权限设置</a></dd>
   </dl>
  </li>
  
  <li>
   <dl>
    <dt>在线统计</dt>
    <dd><a href="/WEB-INF/pages/discharge_statistic.html">流量统计</a></dd>
    <dd><a href="/WEB-INF/pages/sales_volume.html">销售额统计</a></dd>
   </dl>
  </li>

 </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">会员详情</h2>
      </div>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">用户名：</span>
        ${user.username}
       </li>
       <li>
        <span class="item_name" style="width:120px;">昵称：</span>
        ${user.userInfo.nickname}
       </li>
       <li>
        <span class="item_name" style="width:120px;">真实姓名：</span>
        ${uesr.userInfo.realname}
       </li>
       <li>
        <span class="item_name" style="width:120px;">身份证号：</span>
        ${user.userInfo.cardNo}
       </li>
       <li>
        <span class="item_name" style="width:120px;">性别：</span>
        ${user.userInfo.gender}
       </li>
       <li>
        <span class="item_name" style="width:120px;">生日：</span>
        ${user.userInfo.birthday}
       </li>
       <li>
        <span class="item_name" style="width:120px;">移动电话：</span>
        ${user.userInfo.telephone}
       </li>
       <li>
        <span class="item_name" style="width:120px;">邮箱：</span>
        ${user.userInfo.email}
       </li>
       <li>
        <span class="item_name" style="width:120px;">地址：</span>
        ${user.userInfo.address}
       </li>
  
      </ul>
 </div>
</section>
</body>
</html>
