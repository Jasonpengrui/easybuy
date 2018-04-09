<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html><html>
<head>
<meta charset="utf-8"/>
<title>管理员列表</title>
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
	
	/* 全选*/
	function checkAll(who, obj){
		var curCheckBox = document.getElementsByName(who);
		for(i = 0; i < curCheckBox.length; i++){
			curCheckBox.item(i).checked = obj.checked;
		}
	}
	
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
 
 <!-- 填入内容 -->
 
 <div class="page_title">
      <form name="icform" method="post">
       <h2 class="fl">管理员列表</h2>
       
       <a href="#" onclick="formSubmit('start','_self');this.blur();" class="fr top_rt_btn add_icon">启用</a>
       <a href="#" onclick="formSubmit('stop','_self');this.blur();" class="fr top_rt_btn add_icon">停用</a>
       <a href="#" onclick="formSubmit('delete','_self');this.blur();" class="fr top_rt_btn add_icon">删除</a>
       
       

      </div>
      <!--<section class="mtb">
       <select class="select">
        <option>下拉菜单</option>
        <option>菜单1</option>
       </select>
       <input type="text" class="textbox textbox_225" placeholder="输入产品关键词或产品货号..."/>
       <input type="button" value="查询" class="group_btn"/>
      </section>-->
      <table class="table">
      <thead>
       <tr>
       	<th><input type="checkbox" name="selid" onclick="checkAll('userId',this)"/></th>
	    <th>管理员姓名</th> 
	    <th>权限</th>  
        <th>创建时间</th>
        <th>状态</th>
        <th>操作</th>
       </tr>
       </thead>
       
       <c:forEach items="${userPowderList }" var="u" varStatus="status">
       <tr>
       	<th><input type="checkbox" name="userId" value="${u.userId}"/></th>
	    <td class="center" >${u.username }</td>
        <td class="center" >
        	<c:forEach items="${u.powders }" var="p" varStatus="status">
        		${p.name }
        	</c:forEach>
        </td>
        <td class="center"><fmt:formatDate value="${u.createTime }" pattern="yyyy-MM-dd" /></td>
        <td class="center">
	        <c:if test="${u.state==1 }"><a href="stop?userId=${u.userId }" title="是" class="link_icon">&#89;</a></c:if>
	        <c:if test="${u.state==0 }"><a href="start?userId=${u.userId }" title="否" class="link_icon">&#88;</a></c:if>
         </td>
        

        <td class="center">
         <a href="toupdate?userId=${u.userId }" title="编辑" class="link_icon">&#101;</a>
         <a href="delete?userId=${u.userId }" title="删除" class="link_icon">&#100;</a>
         <a href="tomodule?userId=${u.userId }" title="增加权限" class="link_icon">&#101;</a>
        </td>
       </tr>
       </c:forEach>
 
 
 
</form>
  </div>
</section>
<script src="${app }/staticfile/js/amcharts.js" type="text/javascript"></script>
<script src="${app }/staticfile/js/serial.js" type="text/javascript"></script>
<script src="${app }/staticfile/js/pie.js" type="text/javascript"></script>
</body>
</html>
 