<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="staticfile/js/jquery.js"></script>
<script src="staticfile/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
 <h1><img src="images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="http://www.mycodes.net" target="_blank" class="website_icon">站点首页</a></li>
  <li><a href="#" class="clear_icon">清除缓存</a></li>
  <li><a href="#" class="admin_icon">DeathGhost</a></li>
  <li><a href="#" class="set_icon">账号设置</a></li>
  <li><a href="login.html" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="index.html">起始页</a></h2>
  <ul>
 
 	  <li>
   <dl>
    <dt>基础信息</dt>
    <dd><a href="/WEB-INF/pages/setting.html">管理员基本信息</a></dd>
        <dd><a href="/WEB-INF/pages/setting.html">管理员信息修改</a></dd>
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
       <h2 class="fl">站点基础设置</h2>
      </div>
     <section>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">站点名称：</span>
        <input type="text" class="textbox textbox_225" placeholder="站点名称..."/>
        <span class="errorTips">一般不超过80个字符</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">上传logo：</span>
        <label class="uploadImg">
         <input type="file"/>
         <span>上传站点logo</span>
        </label>
       </li>
       <li>
        <span class="item_name" style="width:120px;">站点描述：</span>
        <input type="text" class="textbox textbox_295" placeholder="站点描述..."/>
        <span class="errorTips">一般不超过200个字符</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">关键词：</span>
        <input type="text" class="textbox textbox_295" placeholder="多个关键词用”,“或”|“隔开..."/>
        <span class="errorTips">一般不超过100个字符</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">公司地址：</span>
        <select class="select">
         <option>选择省份</option>
        </select>
        <select class="select">
         <option>选择城市</option>
        </select>
        <select class="select">
         <option>选择区/县</option>
        </select>
       </li>
       <li>
        <span class="item_name" style="width:120px;">详细地址：</span>
        <input type="text" class="textbox textbox_295" placeholder="详细地址..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">关闭站点：</span>
        <label class="single_selection"><input type="radio" name="name"/>否</label>
        <label class="single_selection"><input type="radio" name="name"/>是</label>
       </li>
       <li>
        <span class="item_name" style="width:120px;">关闭站点：</span>
        <textarea placeholder="关闭站点原因" class="textarea" style="height:50px;width:640px;"></textarea>
       </li>
       <li>
        <span class="item_name" style="width:120px;"></span>
        <input type="submit" class="link_btn" value="保存"/>
       </li>
      </ul>
     </section>
 </div>
</section>
</body>
</html>
