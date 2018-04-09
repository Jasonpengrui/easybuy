<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
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
	
	/*利用ajax校验用户名是否存在*/
	function checkUsername(thisobj) {
		//1.获取用户名
		var username=thisobj.value;
		
		//2.检查用户名是否为空
		if($.trim(username)==""){
			alert("用户名不能为空")
			return;
		}
		
		//3.检查用户名是否存在
		$("#username_msg").load(
		"${app}/AjaxCheckUsername",
		{"username":username}//此处要求必须是json串
		); 
	}
	
	function checkID(){
		var id=$("input[name='userInfo.cardNo']").val().trim();
		if(id==""||id==null){
			alert("id不能为空")
			return false;
		}
		var regExg=/^[0-9]{17}[0-9Xx]{1}$/;
		if(regExg.test(id)){
			$("#id_msg").css("color", "green");
			$("#id_msg").html("√");
		}else{
			$("#id_msg").css("color", "red");
			$("#id_msg").html("身份id不合规则");
		}
		
	}
	
	function checkEmail(){
		var email=$("input[name='userInfo.email']").val().trim();
		var regExg=/^\w+@\w+(\.[a-z]+)+$/;
		//检查邮箱是否为空
		if(email==""||email==null){
			$("#email_msg").html("email不能为空");
			return false;
		}
		if(regExg.test(email)){
			$("#email_msg").css("color", "green");
			$("#email_msg").html("√");
		}else{
			$("#email_msg").css("color", "red");
			$("#email_msg").html("email不符合规则");
		}
		
	}
	
	/* 打开一个新页面：调用时不加第二个参数 add by tony */
	function formSubmit (url,sTarget){
	    document.forms[0].target = sTarget;
	    document.forms[0].action = url;
	    document.forms[0].submit();
	    return true;
	}
	
</script>
</head>
<body>
<!--header-->
<header>
 <h1><img src="${app}/staticfile/images/admin_logo.png"/></h1>
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
<form name="icform" method="post">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">用户详情</h2>
      </div>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">用户名：</span>
        <input type="text" class="textbox textbox_225" name="username" value="${user.username}" onblur="checkUsername(this)"/>
         <input type="hidden" name="userId" value="${user.userId}" />
         <span id="username_msg">${msg }
         	<c:if test="${msg}==null"></c:if>
         	<c:if test="${msg}!=null">${msg }</c:if>
         </span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">登陆密码：</span>
        <input type="password" class="textbox textbox_225" name="password" value="${user.password}" />
       </li>
		<li>
        <span class="item_name" style="width:120px;">昵称：</span>
        <input type="text" class="textbox textbox_225" name="userInfo.nickname" value="${user.userInfo.nickname}" />
       </li>
          <li>
        <span class="item_name" style="width:120px;">真实姓名：</span>
        <input type="text" class="textbox textbox_225" name="userInfo.realname" value="${user.userInfo.nickname}" />
       </li>
       <li>
        <span class="item_name" style="width:120px;">身份证号：</span>
        <input type="text" class="textbox textbox_225" name="userInfo.cardNo" value="${user.userInfo.cardNo}" onblur="checkID()"/>
        <span id="id_msg"></span>
       </li>
        <li>
        <span class="item_name" style="width:120px;">性别：</span>
        <input type="radio"  name="userInfo.gender" value="1" checked='<c:if test="${user.userInfo.gender == 1 }">"checked"</c:if>'>男
        <input type="radio"  name="userInfo.gender" value="0" checked='<c:if test="${user.userInfo.gender == 0 }">"checked"</c:if>'>女
       </li>
       <li>
        <span class="item_name" style="width:120px;">生日：</span>
        <input type="Date" class="textbox textbox_225" name="userInfo.birthday" value='<fmt:formatDate value="${user.userInfo.birthday }" pattern="yyyy-MM-dd"/>' />
       </li> 
        <li>
        <span class="item_name" style="width:120px;">手机号：</span>
        <input type="text" class="textbox textbox_225" name="userInfo.telephone" value="${user.userInfo.telephone}" />
       </li>
       <li>
        <span class="item_name" style="width:120px;">邮箱：</span>
        <input type="text" class="textbox textbox_225" name="userInfo.email" value="${user.userInfo.email}" onblur="checkEmail()"/>
        <span id="email_msg"></span>
       </li> 
       <li>
        <span class="item_name" style="width:120px;">地址：</span>
        <input type="text" class="textbox textbox_225" name="userInfo.address" value="${user.userInfo.address}" />
       </li>     
       <ul>
		<li >
			 <span class="item_name" style="width:120px;"></span>
			<a href="#"  class="link_btn" onclick="formSubmit('update','_self');this.blur();">保存</a>
			 <span class="item_name" style="width:120px;"></span>
			<a href="#" onclick="window.history.back();" class="link_btn">返回</a>
		</li>
</ul>
      </ul>
</form>
</section>
</body>
</html>
