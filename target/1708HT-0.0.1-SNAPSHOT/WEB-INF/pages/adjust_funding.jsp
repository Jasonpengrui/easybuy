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
       <h2 class="fl">会员资金变动</h2>
       <a href="user_list.html" class="fr top_rt_btn">返回会员列表</a>
      </div>
      <table class="table">
       <tr>
        <td style="text-align:right;">当前余额：</td>
        <td>
         <input type="text" class="textbox" value="1999.00" readonly/>
         <span>元</span>
        </td>
        <td style="text-align:right;">冻结：</td>
        <td>
         <input type="text" class="textbox" value="0.00"/>
         <span>元</span>
        </td>
        <td rowspan="2">
         <a class="full_link_td" style="line-height:117px;">确认</a>
        </td>
       </tr>
       <tr>
        <td style="text-align:right;">增加：</td>
        <td>
         <input type="text" class="textbox" value="0.00"/>
         <span>元</span>
        </td>
        <td style="text-align:right;">减少：</td>
        <td>
          <input type="text" class="textbox" value="0.00"/>
          <span>元</span>
        </td>
        </tr>
      </table>
      <div class="page_title">
       <h2 class="fl">资金变动记录</h2>
      </div>
      <table class="table">
       <tr>
        <th>类型</th>
        <th>时间</th>
        <th>资金变动额</th>
        <th>当前余额</th>
       </tr>
       <tr>
        <td>订单：201602011534</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>充值</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>增加<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>提现</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>订单：201602011534</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>充值</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>增加<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>提现</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
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
