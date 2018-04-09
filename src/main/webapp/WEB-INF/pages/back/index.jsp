<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html><html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
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
</script>
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="${app }/staticfile/js/jquery.js"></script>
<script src="${app }/staticfile/js/verificationNumbers.js"></script>
<script src="${app }/staticfile/js/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  $(".submit_btn").click(function(){
	  location.href="login";
	  });
});
</script>
</head>
<body>
<!--header-->
 <h1><img src="${app }/staticfile/images/admin_logo.png"/></h1>

 <h2><a href="/back/home.action"><font color="white" size="6" face="微软雅黑">起始页</font></a></h2>
  &nbsp;&nbsp;&nbsp;
 <ul>
   <shiro:hasRole name="2">
 
 	  <li>
   <dl>
    <dt ><font color="white" size="4" face="微软雅黑" style="margin-left:70px">基础信息</font></dt>
     &nbsp;&nbsp;&nbsp;
    <dd><a href="/back/userinfo/userInfo" style="margin-left:80px" ><font color="white" size="2" face="微软雅黑">管理员基本信息</font></a></dd>
    &nbsp;&nbsp;&nbsp;
        <dd><a href="/back/userinfo/toupdate"style="margin-left:80px"><font color="white" size="2" face="微软雅黑">管理员信息修改</font></a></dd>
   </dl>
  </li>
 </shiro:hasRole>
  <shiro:hasPermission name="商品管理">
   <!-- shiro -->
  <li>
   <dl>
    <dt><font color="white" size="4" face="微软雅黑" style="margin-left:70px">商品管理</font></dt>
    &nbsp;&nbsp;&nbsp;
    <!--当前链接则添加class:active-->
    <dd><a href="/back/product/prodList" class="active" style="margin-left:80px" ><font color="white" size="2" face="微软雅黑">商品列表</font></a></dd>
    &nbsp;&nbsp;&nbsp;
   </dl>
  </li>
  </shiro:hasPermission>
    <!-- shiro -->
    
    
    <shiro:hasPermission name="订单管理">
  <li>
   <dl>
    <dt><font color="white" size="3" face="微软雅黑" style="margin-left:70px">订单信息管理</font></dt>
     &nbsp;&nbsp;&nbsp;
    <dd><a href="/back/order/oroderList"  style="margin-left:80px"><font color="white" size="2" face="微软雅黑">订单列表查询</font></a></dd>
     &nbsp;&nbsp;&nbsp;

   </dl>
  </li>
  </shiro:hasPermission>
  <shiro:hasPermission name="用户管理">
  <li>
   <dl>
    <dt><font color="white" size="3" face="微软雅黑" style="margin-left:70px">用户管理</font></dt>
     &nbsp;&nbsp;&nbsp;
    <dd><a href="/back/user/userList"  style="margin-left:80px"><font color="white" size="2" face="微软雅黑">用户列表</font></a></dd>\
     &nbsp;&nbsp;&nbsp;
	
   </dl>
  </li>
  
  </shiro:hasPermission>
  <shiro:hasPermission name="管理员管理">
  <li>
   <dl>
    <dt><font color="white" size="3" face="微软雅黑" style="margin-left:70px" >管理员管理</font></dt>
    &nbsp;&nbsp;&nbsp;
    <dd><a href="/back/userpowder/adminInsert" style="margin-left:80px" ><font color="white" size="2" face="微软雅黑">新建管理员</font></a></dd>
     &nbsp;&nbsp;&nbsp;
    <dd><a href="/back/userpowder/powderSet" style="margin-left:80px" ><font color="white" size="2" face="微软雅黑">管理员权限设置</font></a></dd>
     &nbsp;&nbsp;&nbsp;
   </dl>
  </li>
  
  </shiro:hasPermission>
  
  <shiro:hasPermission name="在线统计">
  <li>
   <dl>
    <dt><font color="white" size="3" face="微软雅黑"style="margin-left:70px">在线统计</font></dt>
     &nbsp;&nbsp;&nbsp;
    <dd><a href="/back/tongji"style="margin-left:80px"><font color="white" size="2" face="微软雅黑">类别统计</font></a></dd>
     &nbsp;&nbsp;&nbsp;
    <dd><a href="/back/tongji1"style="margin-left:80px"><font color="white" size="2" face="微软雅黑">收藏统计</font></a></dd>
     &nbsp;&nbsp;&nbsp;
   </dl>
  </li>


</shiro:hasPermission>
 </ul>

 <ul class="rt_nav">
  <li><a href="/back/logout.action" class="quit_icon"style="margin-left:80px"><font color="white" size="4" face="微软雅黑">安全退出</font></a></li>
 </ul>


</body>
</html>
