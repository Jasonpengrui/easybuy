<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> --%>
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
<script src="${app}/staticfile/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

function formSubmit (url,sTarget){
    document.forms[0].target = sTarget
    document.forms[0].action = url;
    document.forms[0].submit();
    return true;
}

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
			
			
			
			//ajax
			//为商品数量的输入框绑定失去焦点的事件
		 	$(".pnum").blur(function(){
		 		//获取修改后的值
		 		var newPnum = $(this).val();
		 		//获取对应的隐藏域对象的值
		 		var oldPnum = $(this).next().val();
		 		//只用新的值和原来的值不同时才有必要执行后续代码
		 		if(newPnum!=oldPnum){
		 			//编写正则表达式
		 			var reg = /^([0]|[1-9][0-9]*)$/;
		 			if(!reg.test(newPnum.trim())){//不合法
		 				//提示信息
		 				alert("请输入大于等于0的整数");
		 				//数据还原
		 				$(this).val(oldPnum);
		 			}else{//数据合法
		 				//获取商品id
		 				var id = $(this).attr("id");
		 				var $hid=$(this).next();
		 			
		 				$.post("/back/product/ajaxChangePunm",
		 					{"id":id,"newPnum":newPnum});
		 			}
		 		}
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
       <h2 class="fl">商品列表</h2>
       <a href="/back/product/download" class="fr top_rt_btn add_icon">下载商品列表</a>
       <a href="productDetail" class="fr top_rt_btn add_icon">添加商品</a>
      </div>

      <table class="table">
       <tr>
        <th>缩略图</th>
        <th>产品名称</th>
        <th>单价</th>
        <th>精品</th>
        <th>库存</th>
        <th>状态</th>
        <th>删除</th>
        <th>修改</th>
       </tr>

   <c:forEach items="${productList}" var="p" >   
       <tr>
        <td class="center"><img src='/staticfile/images/${p.page}' width="150" height="100"/></td>
        <td>${p.name}</td>
        <td class="center"><strong class="rmb_icon">${p.price}</strong></td>
        <td class="center"><a title="是" class="link_icon">&#89;</td>
        <td class="center">
					<input id="${p.prodId}" class="pnum" name="pnum" type="text" value="${p.pnum}" style=" width:60px;font:14px/1.5 Arial"  >
					<input  class="oldPnum" type="hidden" value="${p.pnum}" >
        </td>
        <td class="center" >
			<c:if test="${p.station==1}"><a href="stop?prodId=${p.prodId}"title="是" class="link_icon">&#89;</a></c:if>
			<c:if test="${p.station==0}"><a href="start?prodId=${p.prodId}"title="否" class="link_icon">&#88;</a></c:if>       
        </td>
        <td class="center">    
         <a href="delete?prodId=${p.prodId }" title="删除" class="link_icon " >&#100;</a>
        </td>
         <td class="center">    
         <a href="productUpdate?prodId=${p.prodId}" title="修改" class="link_icon " >&#101;</a>
        </td>
       </tr>
       
</c:forEach> 
      </table>

      <aside class="paging">
       <a>第一页</a>
       <a>1</a>
       <a>2</a>
       <a>3</a>
       <a>…</a>
       <a>1004</a>
       <a>最后一页</a>
      </aside>
 </div>
</section>
</body>
</html>
