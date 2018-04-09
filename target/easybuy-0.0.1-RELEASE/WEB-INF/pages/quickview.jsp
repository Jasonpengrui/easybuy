<%@page contentType="text/html" isELIgnored="false"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>全部商品</title>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>
<meta name="keywords" content="">
<meta name="description" content="">
<!-- Favicon -->

<!-- Global CSS  -->
<!-- bootstrap -->
<link
	href="${app}/staticfile/pre/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!-- ui -->
<link
	href="${app}/staticfile/pre/plugins/jquery-ui-1.12.0/jquery-ui.min.css"
	rel="stylesheet" type="text/css">
<!-- owl carousel -->
<link
	href="${app}/staticfile/pre/plugins/owl-carousel/owl.carousel.css"
	rel="stylesheet" type="text/css">
<!-- theme style -->
<link href="${app}/staticfile/pre/css/themestyles.css" rel="stylesheet"
	type="text/css">
<!-- nivo-slider  -->

<link href="${app}/staticfile/pre/plugins/Nivo-Slider/nivo-slider.css"
	rel="stylesheet" type="text/css">
<!-- animation -->
<link href="${app}/staticfile/pre/css/animate.css" rel="stylesheet"
	type="text/css">
<!-- media css -->
<link href="${app}/staticfile/pre/css/responsive.css" rel="stylesheet"
	type="text/css">
<!-- magnific popup -->
<link href="${app}/staticfile/pre/plugins/magnific/magnific-popup.css"
	type="text/css" rel="stylesheet" media="screen" />
<!-- font awesome -->
<link
	href="${app}/staticfile/pre/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="${app}/staticfile/pre/css/prodList.css" rel="stylesheet"
	type="text/css">
<style type="text/css">
#prod_content_right {
	padding-left: 60px;
}

#prod_content_right span {
	display: block;
	padding: 11px 0;
}

#prod_content {
	width: 80%;
	margin-left: 200px;
}
</style>
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
									<li class="header-support"><a href="" title=""><span
											class="fa fa-phone "></span>客服电话 010-3488-3844</a></li>
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
									<li class="list-line dropdown flags"><a
										class="dropdown-toggle" data-toggle="dropdown" href="#"
										aria-expanded="false"> <img
											src="${app}/staticfile/pre/image/flag.png" alt="flag">
											<span>中文</span> <i class="fa fa-angle-down"></i>
									</a>
										<ul class="dropdown-menu sfmenuffect">
											<li><a href="#"> <img
													src="${app}/staticfile/pre/image/england.png" alt="flag">
													<span>English</span>
											</a></li>
										</ul></li>
									<!--/ langue  -->
									<!-- currency -->
									<li class="list-line dropdown currency"><a
										class="dropdown-toggle" data-toggle="dropdown" href="#"
										aria-expanded="false"> <i class="fa fa-usd"></i> <span>RMB</span>
											<i class="fa fa-angle-down"></i>
									</a>
										<ul class="dropdown-menu sfmenuffect">
											<li><a href="#"> <i class="fa fa-eur"></i> <span>Usd</span>
											</a></li>
										</ul></li>
									<!-- / currency -->
									<!--  account -->
									<li class="list-line dropdown my-account Pink-color-bg"><a
										aria-expanded="false" href="#" data-toggle="dropdown"
										class="dropdown-toggle"> <i class="fa fa-gear"></i> <span>我的账户</span>
											<i class="fa fa-angle-down"></i>
									</a>
										<ul class="dropdown-menu sfmenuffect">

											<li><a href="/tocart"> <span>购物车</span>
											</a></li>
											
										</ul></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div id="warp">
					<div id="left">
						<div id="left_top"></div>

					</div>
					<div id="right">
						<div id="right_top">
							<span id="prod_name"><br /></span> <br> <span
								id="prod_desc"><br /></span>
						</div>
						<div id="prod_content">
							<div id="prod_content_left" style="float: left;">
								<div id="prod_div">
									<img src="${app}/staticfile/images/${product.page}" width="180px"
										height="260px" ></img>

									<div>
										<div id="gotocart_div" style="padding: 20px 0 0 40px;">
											<a href="/addProd?prodId=${product.prodId}&buyNum=1"
												style="display: block; background-color: #272c33; color: white; width: 80px; height: 20px; padding-left: 5px">加入购物车</a>
										</div>

									</div>
								</div>
							</div>
							<div id="prod_content_right" style="float: left;">
								<span class="input_span">商品名： &nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" name="name" value="${product.name}" readonly="readonly"></span> <span
									class="input_span">商品价钱：<input type="text"
									name="category" value="${product.price}" readonly="readonly"></span> <span
									class="input_span">商品数量：<input type="text"
									name="minprice" value="${product.pnum}" readonly="readonly"></span> <span
									class="input_span">商品种类：<input type="text" name="name"
									value="${product.category}" readonly="readonly"></span> <span class="input_span">商品描述：<input
									type="text" name="name" value="${product.description}" readonly="readonly"></span>
							</div>

							<!-- </div>
			<div id="right_bottom">
				<input class="add_cart_but" type="button"/>	
			</div>
		</div> -->
						</div>
</body>
</html>
