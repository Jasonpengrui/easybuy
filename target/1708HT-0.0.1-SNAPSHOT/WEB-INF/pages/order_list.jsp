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
       <h2 class="fl">订单列表示例</h2>
       <a class="fr top_rt_btn add_icon">添加商品</a>
      </div>
      <section class="mtb">
       <select class="select">
        <option>订单状态</option>
        <option>待付款</option>
        <option>待发货</option>
        <option>待评价</option>
       </select>
       <input type="text" class="textbox textbox_225" placeholder="输入订单编号或收件人姓名/电话..."/>
       <input type="button" value="查询" class="group_btn"/>
      </section>
      <table class="table">
       <tr>
        <th>订单编号</th>
        <th>收件人</th>
        <th>联系电话</th>
        <th>收件人地址</th>
        <th>订单金额</th>
        <th>配送方式</th>
        <th>操作</th>
       </tr>
       <tr>
        <td class="center">201602011207</td>
        <td>DeathGhost</td>
        <td>18300000000</td>
        <td>
         <address>陕西省西安市未央区幸福路222号</address>
        </td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">申通快递</td>
        <td class="center">
         <a href="#" title="查看订单" class="link_icon" target="_blank">&#118;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center">201602011207</td>
        <td>DeathGhost</td>
        <td>18300000000</td>
        <td>
         <address>陕西省西安市未央区幸福路222号</address>
        </td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">圆通快递</td>
        <td class="center">
         <a href="#" title="查看订单" class="link_icon" target="_blank">&#118;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
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
