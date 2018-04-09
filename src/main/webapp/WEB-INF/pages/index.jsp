﻿<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <!-- Favicon -->
    
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
            <!-- slider -->
            <figure class="slider-area">
                <div class="slider-area-inner">
                    <div class="ajax_loading"><i class="fa fa-spinner fa-spin"></i></div>
                    <div id="nivoparrallax" class="nivoSlider">
                 	  <c:forEach items="${productLike}" var="prod">
                        <!-- start slider 1 -->
                        <div class="slider-item">
                            <img src="${app}/staticfile/images/${prod.page}" title="#imgcaption1" alt="image" />
                            <div id="imgcaption1" class="caption-item" style="display: none">
                                <div class="container">
                                    <div class="RightToLeft">
                                        <div class="Headding">great shopping</div>
                                        <div class="sub-heading">for eshop</div>
                                        <div class="slider-line1 hidden-xs"></div>
                                        <div class="slider-line2 hidden-xs"></div>
                                        <div class="slider-line3 hidden-xs"></div>
                                        <div class="s-dsc hidden-xs"></div>
                                        <div class="readmore">
                                        <!-- 点击跳转到商品详情页面 ，需要传递商品id---${prod.prodId}-->
                                            <a href="toquickview?prodId=${prod.prodId}" class="btn btn-button Pink-color-bg"><span class="fa fa-shopping-basket"></span>buy now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach> 
                        </div>
                        <!-- end slider 1-->
                    </div>
                </div>
            </figure>
            <!-- / slider -->
            <!-- free shipping -->
            <section class="free-shipping padding-45">
                <div class="container">
                    <div class="row">
                        <!-- box1 -->
                        <div class="col-sm-6 col-md-3 col-lg-3">
                            <div class="free-shgipping-box shipping-1 col-xs-top ">
                                <div class="free-sp-icon-box-inner lagoon-blue-bg">
                                    <i class="fa fa-send"></i>
                                </div>
                                <div class="shipping-content">
                                    <h2 class="hadding-title  lagoon-blue-color"><span>免费配送</span></h2>
                                    <p>本商城提供全国免费配送的服务</p>
                                </div>
                            </div>
                        </div>
                        <!-- box1 -->
                        <!-- / box2 -->
                        <div class="col-sm-6 col-md-3 col-lg-3 ">
                            <div class="free-shgipping-box shipping-2 ">
                                <div class="free-sp-icon-box-inner Peel-bg">
                                    <i class="fa fa-recycle"></i>
                                </div>
                                <div class="shipping-content">
                                    <h2 class="hadding-title Peel-color"><span>退货退款</span></h2>
                                    <p>支持7天无理由退货退款</p>
                                </div>
                            </div>
                        </div>
                        <!-- / box2 -->
                        <!-- box3 -->
                        <div class=" col-sm-6 col-md-3 col-lg-3">
                            <div class="free-shgipping-box shipping-3">
                                <div class="free-sp-icon-box-inner lagoon-bg">
                                    <i class="fa fa-truck"></i>
                                </div>
                                <div class="shipping-content">
                                    <h2 class="hadding-title lagoon-color"><span>送货上门</span></h2>
                                    <p>本商城支持送货上门的服务！</p>
                                </div>
                            </div>
                        </div>
                        <!-- / box3 -->
                        <!-- box3 -->
                        <div class=" col-sm-6 col-md-3 col-lg-3">
                            <div class="free-shgipping-box shipping-4">
                                <div class="free-sp-icon-box-inner Pink-color-bg">
                                    <i class="fa fa-gift"></i>
                                </div>
                                <div class="shipping-content">
                                    <h2 class="hadding-title Pink-color"><span>领取礼品</span></h2>

                                    <p>购物即可免费领取精美礼品</p>
                                </div>
                            </div>
                        </div>
                        <!-- / box3 -->
                    </div>
                </div>
            </section>
            <!-- / free shipping -->
            <!-- featured item -->
            <!-- / promo item box -->
            <!--  tab product -->
            <section class="our-product-box padding-45">
                <div class="container">
                    <div class="tab-product">
                        <div class="tab-menu-box">
                            <!--  tab product title -->
                            <div class="ourproducts-heading product-heading">
                                <h2 class="no-margin">
                                    <span>我们的商品</span>
                                </h2>
                            </div>
                            <!-- / tab product -->
                            <!--  tab product menu -->
                            <div class="tab-menu">
                                <ul role="tablist">
                                    <li class="active" role="presentation"><a data-toggle="tab" role="tab" href="/toproductList" aria-expanded="true"><span>所有商品</span></a></li>
                                </ul>
                            </div>

                            <!-- / tab product menu -->
                            <!--  tab product content -->
                            <div class="tab-product-content">
                                <!-- item box -->
                                <div class="tab-conten">
                                    <div id="allproduct" class="tab-pane fade in active " role="tabpanel">
                                        <div class="our-product">
                                        <!-- 遍历商品列表 -->
                                        	<c:forEach items="${productList}" var="prod">
                                            <!-- single item -->
                                            <div class="product-item">
                                                <div class="product-item-img">
                                                    <a href="" title="product image">
                                                        <img src="${app}/staticfile/images/${prod.page}" alt="product image" />
                                                    </a>
                                                    <div class="item-lable">
                                                        <span class="lable-new">new</span>
                                                        <span class="lable-sale">sale</span>
                                                    </div>
                                                    <div class="hover-box">
                                                        <a href="addProd?prodId=${prod.prodId}&buyNum=1" title="Add to Cart" data-placement="top" data-toggle="tooltip" type="button" onclick="" class="btn btn-button cart-button lagoon-blue-bg"><i class="fa fa-shopping-basket"></i></a>
                                                        <!-- 跳转到商品详情页面 ，需要商品id-->
                                                        <a href="toquickview?prodId=${prod.prodId }" title="Search" data-placement="top" data-toggle="tooltip" class="btn btn-button button-search lagoon-blue-bg"><i class="fa fa-search"></i></a>
                                                        <!-- 将一个心愿保存到心愿表中，需要商品id -->
                                                        <a href="addLike" title="Wishlist" data-placement="top" data-toggle="tooltip" class="btn btn-button button-wishlist lagoon-blue-bg"><i class="fa fa-heart"></i></a>
                                                    </div>
                                                </div>

                                                <div class="item-bottom">
                                                    <div class="item-content">
                                                    <!-- 跳转到商品详情页面 -->
                                                        <div class="product-name"><a href="toquickview?prodId=${prod.prodId }">${prod.description }</a></div>
                                                        <div class="ratting-box">
                                                            <div class="rating">
                                                                <span class="star active"></span>
                                                                <span class="star active"></span>
                                                                <span class="star active"></span>
                                                                <span class="star active"></span>
                                                                <span class="star-half-o"></span>
                                                            </div>
                                                        </div>
                                                        <div class="product-price">
                                                            <span class="new-price">${prod.price}元</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- / single item -->
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <!-- / item box -->
                            </div>
                            <!-- / tab product content -->
                        </div>
                    </div>
                </div>
            </section>
            <!-- / tab product -->
            <!--  promo banner-2 -->
            <div class="promobanner2 padding-30">
                <!--  promo items-->
                <div class="pormo2 promo-box promo2-item1">
                    <img src="${app}/staticfile/pre/image/banner/promobanner/promo2/image.png" alt="">
                    <div class="ovrly"></div>
                    <a href="" class="promo2-button no-bg-button">SHOP NOW</a>
                </div>
                <!-- / promo items-->
                <!--  promo items-->
                <div class="pormo2 promo-box  promo2-item2">
                    <img src="${app}/staticfile/pre/image/banner/promobanner/promo2/image1.png" alt="">
                    <div class="ovrly"></div>
                    <a href="" class="promo2-button no-bg-button">SHOP NOW</a>
                </div>
                <!-- / promo items-->
            </div>
            <!-- / promo banner-2 -->
            <!-- promo-3 banner -->
            <div class="promobanner-3 padding-45">
                <div class="container">
                    <div class="row promobanner3-inner">
                        <div class=" col-md-9  promo-3-left">
                            <div class="row">
                                <div class=" col-md-4  promo-3-left sm-resize">
                                    <div class="promo3-item1">
                                        <div class="promo3-item1-img">
                                            <img src="${app}/staticfile/pre/image/banner/promobanner/promo3/image1.png" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-md-8  promo-3-right sm-resize">
                                    <div class="promo3-item2">
                                        <div class="promo3-item2-img">
                                            <img src="${app}/staticfile/pre/image/banner/promobanner/promo3/image2.png" alt="">
                                            <a class="promo3-button no-bg-button" href="">现在去购物</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row promobanner3-inne3">
                                <div class=" col-md-8 promo3-item-inner promo-3-left sm-resize">
                                    <div class="promo3-item4">
                                        <div class="promo3-item4-img">
                                            <img src="${app}/staticfile/pre/image/banner/promobanner/promo3/image4.png" alt="">
                                            <a class="promo3-button no-bg-button" href="">现在去购物</a>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-md-4 promo-3-right sm-resize">
                                    <div class="promo3-item5">
                                        <div class="promo3-item5-img">
                                            <img src="${app}/staticfile/pre/image/banner/promobanner/promo3/image5.png" alt="">
                                            <a href="#" class="btn btn-radius Pink-color-bg">现在去购物</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class=" col-md-3 promo-3-right sm-resize">
                            <div class="promo3-item3">
                                <div class="promo3-item3-img">
                                    <img src="${app}/staticfile/pre/image/banner/promobanner/promo3/image3.png" alt="">
                                    <a class="btn btn-button Pink-color-bg white" href="#">现在去购物</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- / promo-3 banner -->
            <!-- btand logo -->
            <section class="brand-logo-area padding-45">
                <div class="container">
                    <div class="blog-hadding product-heading">
                        <h2 class="no-margin">
                        <span>品牌</span>
                        </h2>
                    </div>
                    <div class="brand-logo-box padding-30" id="brand-logo">
                        <div class="item single-brand">
                            <a href=""><img src="${app}/staticfile/pre/image/brand-logo/baran1.png" alt="brand logo" /></a>
                        </div>
                        <div class="item single-brand">
                            <a href=""><img src="${app}/staticfile/pre/image/brand-logo/baran2.png" alt="brand logo" /></a>
                        </div>
                        <div class="item single-brand">
                            <a href=""><img src="${app}/staticfile/pre/image/brand-logo/baran3.png" alt="brand logo" /></a>
                        </div>
                        <div class="item single-brand">
                            <a href=""><img src="${app}/staticfile/pre/image/brand-logo/baran3.png" alt="brand logo" /></a>
                        </div>
                        <div class="item single-brand">
                            <a href=""><img src="${app}/staticfile/pre/image/brand-logo/baran5.png" alt="brand logo" /></a>
                        </div>
                        <div class="item single-brand">
                            <a href=""><img src="${app}/staticfile/pre/image/brand-logo/baran6.png" alt="brand logo" /></a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- / btand logo -->
 <!-- footer -->
            <footer class="footer-area padding-45">
                <!-- footer top bar -->
                <div class="footer-top-bar lagoon-blue-bg">
                    <div class="container">
                        <div class="row">
                            <!-- newsletter -->
                            <div class=" col-md-4 col-lg-4 text-center">
                                <div class="newsletter">
                                    <h2 class="footer-hadding">newsletter</h2>
                                    <form>
                                        <div class="form-group">
                                            <input type="text" placeholder="Enter your email" class="form-control newslatter-input">
                                        </div>
                                        <div class="form-group">
                                            <button class="btn submit-btn" type="submit">Subscribe</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- / newsletter -->
                            <!--  Hot Line -->
                            <div class=" col-md-4 col-lg-4 text-center">
                                <div class="newsletter">
                                    <h2 class="footer-hadding"><span class="fa fa-phone-square"></span> 热线</h2>
                                    <div class="call-us-box">
                                        <ul>
                                            <li>010-3488-3844</li>
                                            <li><span>support@eshop.com</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- / Hot Line -->
                            <!--  Payment Options -->
                            <div class=" col-md-4 col-lg-4 text-center">
                                <h2 class="footer-hadding">支付方式</h2>
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
                                        <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here content here.</p>
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
                                                <span> 关于我们</span>
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
                                                <span>条款条例</span>
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
                                                <span>附件</span>
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
                                                <span>会员中心</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <i class="fa fa-caret-right"></i>
                                                <span>积分兑换</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <i class="fa fa-caret-right"></i>
                                                <span>配送中心</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <i class="fa fa-caret-right"></i>
                                                <span>维权中心</span>
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
                                 <c:if test="${empty  user}">
                                        <li>
                                            <a href="/tologin">
                                                <i class="fa fa-caret-right"></i>
                                                <span>登录</span>
                                            </a>
                                        </li>
                                        </c:if>
                                        <li>
                                            <a href="/tocart">
                                                <i class="fa fa-caret-right"></i>
                                                <span>购物车</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/toLikeList">
                                                <i class="fa fa-caret-right"></i>
                                                <span>愿望清单</span>
                                            </a>
                                        </li>
                                        <c:if test="${!empty  user}">
                                        <li>
                                            <a href="/logout">
                                                <i class="fa fa-caret-right"></i>
                                                <span>注销</span>
                                            </a>
                                        </li>
                                        </c:if>

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
                                            <span class="colation">北京市大兴区亦庄经济开发区</span>
                                        </li>
                                        <li>
                                            <i class="fa fa-skype footer-icon"></i>
                                            <span>Eshop</span>
                                        </li>
                                        <li>
                                            <i class="fa fa-phone footer-icon"></i>
                                            <span>010-3488-3844</span>
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
                        <p class="copyright">Copyright &copy; 2017.版权所有</p>
                    </div>
                </div>
                <!-- / footer bottom -->
            </footer>
            <!-- / footer -->
            <div style="display: block;" id="top-buttom" class="top-bottom"><span class="fa fa-long-arrow-right"></span></div>
        </div>
        <!-- / page -->
    </div>
    <!-- / wrapper -->
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
	/* 打开一个新页面：调用时不加第二个参数 add by tony */
	function formSubmit (url,sTarget){
	    document.forms[0].target = sTarget;
	    document.forms[0].action = url;
	    document.forms[0].submit();
	    return true;
	}
	
    </script>
</body>

</html>