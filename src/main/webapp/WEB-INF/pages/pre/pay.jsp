<%@page contentType="text/html" isELIgnored="false"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>选择银行</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <!-- Favicon -->
    <link href="${app}/staticfile/css/pay/pay.css" rel="stylesheet" type="text/css">
    <!-- Global CSS  -->
    <!-- bootstrap -->
    <link href="${app}/staticfile/pre/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- ui -->
    <link href="${app}/staticfile/pre/plugins/jquery-ui-1.12.0/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <!-- owl carousel -->
    <link href="${app}/staticfile/pre/plugins/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css">
    <!-- theme style -->
    <link href="${app}/staticfile/pre/css/themestyles.css" rel="stylesheet" type="text/css">
    <!-- nivo-slider  -->
    
    <link href="${app}/staticfile/pre/plugins/Nivo-Slider/nivo-slider.css" rel="stylesheet" type="text/css">
    <!-- animation -->
    <link href="${app}/staticfile/pre/css/animate.css" rel="stylesheet" type="text/css">
    <!-- media css -->
    <link href="${app}/staticfile/pre/css/responsive.css" rel="stylesheet" type="text/css">
    <!-- magnific popup -->
    <link href="${app}/staticfile/pre/plugins/magnific/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
    <!-- font awesome -->
    <link href="${app}/staticfile/pre/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
         <link href="24webgroup">
        <script src="${app}/staticfile/pre/html5shiv.js"></script>
        <script src="${app}/staticfile/pre/respond.js"></script>
        <![endif]-->
</head>
<body>
    <!-- start wrapper -->
   	 <div class="wrapper">
        <!-- start page -->
        <div class="page">
            <!-- start header -->
            <header>
                <!-- header top bar -->
                <div class="top-bar blue-color-bg">
                    <div class="container">
                        <div class="row">
                            <!-- support -->
                            <div class="col-sm-6 col-md-4 col-lg-4">
                                <ul>
                                    <li class="header-support">
                                        <a href="" title=""><span class="fa fa-phone "></span>客服电话 010-3488-3844</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- / support -->
                            <!--  message -->
                            <div class="col-md-3 col-lg-3 hidden-sm">
                                <div class="header-message">
                                    <p>欢迎您光临本网站！</p>
                                </div>
                            </div>
                            <!-- / message -->
                            <!-- language currency -->
                            <div class="col-sm-6 col-md-5 col-lg-5 lang-currency">
                                <ul class="nav navbar-nav pull-right">
                                    <!-- langue -->
                                    <li class="list-line dropdown flags">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                            <img src="${app}/staticfile/pre/image/flag.png" alt="flag">
                                            <span>中文</span>
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu sfmenuffect">
                                            <li>
                                                <a href="#">
                                                    <img src="${app}/staticfile/pre/image/england.png" alt="flag">
                                                    <span>English</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <!--/ langue  -->
                                    <!-- currency -->
                                    <li class="list-line dropdown currency">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                            <i class="fa fa-usd"></i>
                                            <span>RMB</span>
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu sfmenuffect">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-eur"></i>
                                                    <span>Usd</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <!-- / currency -->
                                    <!--  account -->
                                    <li class="list-line dropdown my-account Pink-color-bg">
                                        <a aria-expanded="false" href="#" data-toggle="dropdown" class="dropdown-toggle">
                                            <i class="fa fa-gear"></i>
                                            <span>我的账户</span>
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu sfmenuffect">
                                        
                                        <c:if test="${empty user}">
                                            <li>
                                                <a href="/toregist">
                                                    <span>注册</span>
                                                </a>
                                            </li>
                                            
                                            <li>
                                                <a href="/tologin">
                                                    <span>登录</span>
                                                </a>
                                            </li>
              
                                            </c:if>
                                            <li>
                                                <a href="/tocart">
                                                    <span>购物车</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="/toLikeList">
                                                    <span>愿望清单</span>
                                                </a>
                                            </li>
                                                  <c:if test="${!empty user}">
                                            <li>
                                                <a href="/logout">
                                                    <span>注销</span>
                                                </a>
                                            </li>
                                            </c:if>
                                        </ul>
                                    </li>
                                    <!--  account -->
                                </ul>

                            </div>
                            <!-- / lang currency -->
                        </div>
                    </div>
                </div>
                <!-- / header top bar -->
                <!-- header center -->
                <div class="header-container white-bg">
                    <div class="container">
                        <div class="row">
                            <!-- logo -->
                            <div class="col-sm-4 col-md-4  col-lg-4">
                                <div class="logo">
                                    <a href="/toproductList" title="logo"><img alt="logo" src="${app}/staticfile/pre/image/logo.png"></a>
                                </div>
                            </div>
                            <!-- / logo -->
                            <!-- search -->
                            <div class="col-sm-4 col-md-4  col-lg-4">
                                <div class="header-search">
                                    <form id="searchbox" method="post" >
                                        <div class="form-search">
                                            <input class="form-control font-capitalize" type="text" name="keyword" placeholder="请输入您的关键词...">
                                            <button class="white bunker-color-bg" onclick="formSubmit('likesearch','_self');this.blur();" >
                                               <i class="fa fa-search"></i> 
                                            </button>
                                        </div>
                                        <div class="cat-search">
                                            <select id="catsearch" name="category" class="searchbox">
                                                <option >种类</option>
                                            	<c:forEach items="${descList}" var="d">
                                                <option value="${d}">${d}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- / search -->
                            <!-- header cart -->
                            <div class=" col-sm-4 col-md-4 col-lg-4">
                                <div class="header-cart-mini">
                                    <div class="topcart-mini-container">
                                        <div class="block-cart">
                                            <button class="dropdown-toggle" type="button">
                                                <span class="fa fa-shopping-bag Pink-color-bg"></span>
                                                <span class="cart-top-title">购物车</span>
                                            </button>
                                            <!-- start hidden product-->
                                            <ul class="cart-product-list sfmenuffect">
                                            <c:set var="money" value="0"/>
                                            <c:forEach items="${cartList}" var="entry">
                                                <li class="item cart-item">
                                                    <a href="">
                                                        <img src="${app}/staticfile/images/${entry.key.page}" alt="" />
                                                    </a>
                                                    <div class="product-details">
                                                        <div class="product-details-inner">
                                                            <p class="product-name"><a href="">${entry.key.name }</a></p>
                                                            <a href="deleteProd?prodId=${entry.key.prodId }" title=""><span class="fa fa-remove"></span></a>
                                                            <div class="ratting-box">
                                                                <div class="rating">
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>
                                                                    <span class="star active"></span>
                                                                    <span class="star-o"></span>
                                                                </div>
                                                            </div>
                                                            <div class="product-price">
                                                                <span class="new-price">${entry.key.price }￥</span>
                                                                <c:set var="money" value="${money+entry.key.price*entry.value }"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                </c:forEach>                                       
                                                <li class="item cart-item">
                                                    <div class="top-subtotal">
                                                        <div class="sub-total">
                                                            <label>Sub-Total:</label><span>${money}￥</span>
                                                        </div>
                                                        <div class="buttons">
                                                            <div class="float-right">
                                                                <a class="btn btn-button bunker-color-bg  white view" href="/tocart">View cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <!-- end hidden product-->
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- / header cart -->
                        </div>
                    </div>
                </div>
				<!-- / header Container -->
				<!-- header menu -->
				<div class="header-menu bunker-color-bg">
					<div class="container">
						<!-- header menu -->
						<div class="nav-container">
							<nav class="navigation" id="sf-menu">
								<ul class="sf-menu sf-js-enabled sf-arrow">
									<li><a href="/toproductList">首页</a></li>
									<li><a href="/tocart">购物车</a></li>
									<li><a href="/orderList">订单</a></li>
									<li><a href="#">联系我们</a></li>
								</ul>
						</div>
					</div>
					<!-- / mobile menu -->
                    </div>
                </div>
                <!-- / header menu -->
            </header>
            <!-- / header -->
            <!--  breadcrumb -->
            <section class="breadcrumb-area padding-30">
                <div class="container">
                    <div class="breadcrumb breadcrumb-box">

                    </div>
                </div>
            </section>
            
            <!-- / breadcrumb -->








            
                <!-- shopping-cart -->
                <section class="main-page container">
                    <div class="main-container col1-layout">
                        <form action="/pay" method="post">
		<dl class="payment_page">
			<dt>
				<strong>订单号：</strong> 
				<input class="idinp" name="orderId" readonly="readonly" type="text" value="${orderId}">
				<strong>支付金额：</strong>
				<input class="idinp" name="price" readonly="readonly" type="text" value="${price}">
			</dt>
			<dd class="payment_page_name">
				<strong>请您选择在线支付银行 :</strong>
			</dd>
			<dd class="banks">
				<ul>
					<li>
						<input name="pd_FrpId" type="radio" value="ICBC-NET-B2C"> 
						<img src="${app}/staticfile/images/pay/01gs.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="CMBCHINA-NET-B2C">
						<img src="${app}/staticfile/images/pay/02zs.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="CCB-NET-B2C">
						<img src="${app}/staticfile/images/pay/03js.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/04ny.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/05zg.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/06jt.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/07hx.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/08xy.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/09gd.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/10sz.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/11ms.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/12sh.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/13zx.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/14gd.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/15cq.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${app}/staticfile/images/pay/16bh.jpg" width="130" height="52">
					</li>
				</ul>
			</dd>
			<div style="clear: both;"></div>
			<dd class="ok_dd">
				<input  type="submit" class="ok_pay" value="继续支付" >
				<!--<a href="pay?orederId=${orderId}&price=${price}&pd_FrpId=${pd_FrpId}">结算</a>-->
			
			</dd>
		</dl>
	</form>
                    </div>
                </section>
                <!-- / shopping-cart -->


















           <!-- footer -->
            <footer class="footer-area padding-45">
               <!-- footer top bar -->
               <div class="footer-top-bar lagoon-blue-bg">
                    <div class="container">
                        <div class="row">
                           <!-- newsletter -->
                           <div class=" col-md-4 col-lg-4 text-center">
                                <div class="newsletter">
                                    <h2 class="footer-hadding">通讯</h2>
                                    <form>                                       
                                        <div class="form-group">
                                            <input type="text" placeholder="Enter your email" class="form-control newslatter-input">
                                        </div>
                                        <div class="form-group">
                                            <button class="btn submit-btn" type="submit">订阅</button>
                                        </div>                                        
                                    </form>
                                </div>
                            </div>
                            <!-- / newsletter -->
                            <!--  Hot Line -->
                            <div class=" col-md-4 col-lg-4 text-center">
                                <div class="newsletter">
                                    <h2 class="footer-hadding"><span class="fa fa-phone-square"></span>热线</h2>
                                    <div class="call-us-box">
                                        <ul>
                                            <li>+022-088456 24/7</li>
                                            <li><span>support@eshop.com</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div> 
                            <!-- / Hot Line -->
                            <!--  Payment Options -->
                            <div class=" col-md-4 col-lg-4 text-center">
                                <h2 class="footer-hadding">付款方式</h2>
                                <div class="payment-options">
                                    <ul>
                                        <li><a href=""><i class="fa fa-cc-paypal"></i></a></li>
                                        <li><a href=""><i class="fa fa-cc-stripe"></i></a></li>
                                        <li><a href=""><i class="fa fa-cc-visa"></i></a></li>
                                        <li><a href=""><i class="fa fa-cc-mastercard"></i></a></li>
                                        <li><a href=""><i class="fa fa-cc-amex"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                                 <!-- / Payment Options -->
                           </div>
                        </div>
                    </div>
                    <!-- / footer top bar -->
                    <!--  footer center -->
                    <div class="footer-center">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6 col-md-3 col-lg-3">
                                    <!-- footer About -->
                                    <div class="footer-about text-center">
                                        <div class="footer-logo">
                                            <img alt="footer logo" src="${app}/staticfile/pre/image/footer-logo.png">
                                        </div>
                                        <div class="footer-content">
                                            <p>Lorem Ipsum是它有一个或多或少正常的字母分布，而不是在这里使用Content here content</p>
                                        </div>
                                        <div class="footer-social-icon">
                                            <ul>
                                                <li><a href="" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="" class="google"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="" class="skype"><i class="fa fa-skype"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- / footer About -->
                                </div>
                                <div class="col-sm-6 col-md-2 col-lg-2 hidden-sm">
                                    <!-- start footer information -->
                                    <div class="information">
                                         <h2 class="footer-hadding">信息</h2>
                                         <ul>
                                             <li>
                                                 <a href="">
                                                     <i class="fa  fa-caret-right"></i>
                                                     <span>关于我们</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa  fa-caret-right"></i>
                                                     <span>我的账户</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>隐私政策</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>条款条件</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>配送信息</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>饰品</span>
                                                 </a>
                                             </li>
                                         </ul>
                                    </div>
                                     <!-- / footer information -->
                                </div>
                                <div class="col-sm-6 col-md-2 col-lg-2 ">
                                     <!-- start footer Custom Service -->
                                    <div class="service col-sm col-xs1">
                                        <h2 class="footer-hadding">客户服务</h2>
                                         <ul>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>关于我们</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>我的账户</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>隐私政策</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>条款条件</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>配送信息</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>饰品</span>
                                                 </a>
                                             </li>
                                         </ul>
                                    </div>
                                     <!-- / footer Custom Service -->
                                </div>
                                <div class="col-sm-6 col-md-2 col-lg-2 sm-clear">
                                    <!-- start footer my account -->
                                    <div class="account col-sm col-xs1">
                                        <h2 class="footer-hadding">我的账户</h2>
                                         <ul>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>关于我们</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>我的账户</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>隐私政策</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>条款条件</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>配送信息</span>
                                                 </a>
                                             </li>
                                             <li>
                                                 <a href="">
                                                     <i class="fa fa-caret-right"></i>
                                                     <span>饰品</span>
                                                 </a>
                                             </li>
                                         </ul>
                                    </div>
                                    <!-- / footer my account -->
                                </div>
                                <!-- footer contact -->
                                <div class="col-sm-6 col-md-3 col-lg-3">
                                    <div class="footer-contact">
                                       <h2 class="footer-hadding">联系我们</h2>
                                        <ul>
                                            <li>
                                                <i class="fa fa-map-marker footer-icon"></i>
                                                <span class="colation">Rongmohl塔34新城2154，巴厘路MPB</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-skype footer-icon"></i>
                                                <span>网上商店</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-phone footer-icon"></i>
                                                <span>2(402)234-85467</span>
                                            </li>
                                            <li>
                                                <i class="fa fa-envelope-o footer-icon"></i>
                                                <span>support@Eshop.com</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- / footer contact -->
                            </div>
                        </div>
                    </div>
                    <!-- / footer center -->
                    <!-- footer bottom -->
                    <div class="footer-bottom">
                        <div class="container">
                            <p class="copyright">Copyright &copy; 2017.公司名称版权所有<a target="_blank" href="#">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                        </div>
                    </div>
                    <!-- / footer bottom -->
                </footer>
            <!-- / footer -->
            <div style="display: block;" id="top-buttom" class="top-bottom"><span class="fa fa-long-arrow-right"></span></div>
        </div>
        <!-- / page -->   
    </div>
    <!-- JS Global -->
    <script src="${app}/staticfile/pre/plugins/jquery/jquery-1.11.3.min.js"></script>
    <!-- jquery ui -->
    <script src="${app}/staticfile/pre/plugins/jquery-ui-1.12.0/jquery-ui.min.js"></script>
    <!-- bootstarp -->
    <script src="${app}/staticfile/pre/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- owl carousel -->
    <script src="${app}/staticfile/pre/plugins/owl-carousel/owl.carousel.min.js"></script>
    <!-- nivo slider -->
    <script src="${app}/staticfile/pre/plugins/Nivo-Slider/jquery.nivo.slider.js"></script>
    <!-- elevatezoom -->
    <script src="${app}/staticfile/pre/plugins/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
    <!-- magnific popup -->
    <script src="${app}/staticfile/pre/plugins/magnific/jquery.magnific-popup.min.js"></script>
    <!-- accordion -->
    <script src="${app}/staticfile/pre/js/jquery.accordion.source.js"></script>
    <!-- ddslick -->
    <script src="${app}/staticfile/pre/js/jquery.ddslick.min.js"></script>
    <!-- custom js -->
    <script src="${app}/staticfile/pre/js/theme.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(function() {
                $("#slider-range").slider({
                    range: true,
                    min: 0,
                    max: 500,
                    values: [50, 450],
                    slide: function(event, ui) {
                        $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                    }
                });
                $("#amount").val("$" + $("#slider-range").slider("values", 0) +
                    " - $" + $("#slider-range").slider("values", 1));
            });
            /*  select  menu */
            $(function() {
                $(".selector1").selectmenu();
            });
        });
    </script>
    </body>
</html>