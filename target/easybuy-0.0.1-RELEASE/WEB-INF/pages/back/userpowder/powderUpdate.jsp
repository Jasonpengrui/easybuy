<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>管理员更新</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${app }/staticfile/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="${app }/staticfile/js/jquery.js"></script>
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
	
	
	
	function formSubmit (url,sTarget){
		document.forms[0].target = sTarget
		document.forms[0].action = url;
		document.forms[0].submit();
		return true;
	}
	
</script>
</head>
<body>
<!--header-->
<header>
 <h1><img src="${app }/staticfile/images/admin_logo.png"/></h1>
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

<style>
.dataStatistic{width:400px;height:200px;border:1px solid #ccc;margin:0 auto;margin:10px;overflow:hidden}
#cylindrical{width:400px;height:200px;margin-top:-15px}
#line{width:400px;height:200px;margin-top:-15px}
#pie{width:400px;height:200px;margin-top:-15px}
</style>

<section class="rt_wrap content mCustomScrollbar">
 	<div class="rt_content">
      <div class="page_title">
	<form name="icform" method="post">
       <h2 class="fl">修改管理员信息</h2>
    
      </div>
      
      <input type="hidden" name="userId" value="${user.userId }" />
      <ul class="ulColumn2">
       
       <li>
        <span class="item_name" style="width:120px;">管理员名称：</span>
        <input type="text" class="textbox textbox_225" name="username" value="${user.username }" placeholder="请输入修改后的管理员名称..."/>
	     <span id="username_msg">${msg }
         	<c:if test="${msg}==null"></c:if>
         	<c:if test="${msg}!=null">${msg }</c:if>
	     </span>
        <!--注册各个为空判断-->
       </li>
       <li>
        <span class="item_name" style="width:120px;">登录密码：</span>
        <input type="password" class="textbox textbox_225" name="password" value="${user.password }" placeholder="请输入修改后的登录密码..."/>
      <!--  <span class="errorTips">错误提示信息...</span>-->
       </li>

       <li>
        <span class="item_name" style="width:120px;"></span>
        <a href="#" class="link_btn"  onclick="formSubmit('update','_self');this.blur();">修改</a>
        
         <span class="item_name" style="width:12px;"></span>
         <a href="#" class="link_btn"  onclick="window.history.back();">返回</a>
       </li>

      </ul>
</form>
 </div>
 
</section>
</body>
</html>