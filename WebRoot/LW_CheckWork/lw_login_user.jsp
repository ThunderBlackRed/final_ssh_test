<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!-- <!DOCTYPE html> -->
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>OA办公系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Google Webfont -->
<link href='http://fonts.useso.com/css?family=Lato:300,400|Crimson+Text'
	rel='stylesheet' type='text/css'>
<!-- Themify Icons -->
<link rel="stylesheet" href="qiantai/css/themify-icons.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="qiantai/css/bootstrap.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="qiantai/css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="qiantai/css/magnific-popup.css">
<!-- Superfish -->
<link rel="stylesheet" href="qiantai/css/superfish.css">
<!-- Easy Responsive Tabs -->
<link rel="stylesheet" href="qiantai/css/easy-responsive-tabs.css">



<!-- Theme Style -->
<link rel="stylesheet" href="qiantai/css/style.css">


<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="qiantai/js/modernizr-2.6.2.min.js"></script>
	<script src="qiantai/js/respond.min.js"></script>
	<![endif]-->


</head>
<body>
	<!-- START #fh5co-header -->
	<header id="fh5co-header-section" role="header" class="">
	<div class="container">

		<!-- START #fh5co-logo -->
		<h1 id="fh5co-logo" class="pull-left">
			<a href="#">Office Automation</a><br>
		</h1>

		<!-- START #fh5co-menu-wrap -->
		<nav id="fh5co-menu-wrap" role="navigation">
		<ul class="sf-menu" id="fh5co-primary-menu">
			<li class="active"><a href="#">主页</a>
			</li>
			<li><a href="#" class="fh5co-sub-ddown">考勤</a>
				<ul class="fh5co-sub-menu">
					<li><a href="#fh5co-main">请假</a></li>
					<li><a href="#fh5co-main">出差</a></li>
					<li><a href="#fh5co-main">加班</a></li>
					<li><a href="#fh5co-main">休假</a></li>
					<li><a href="#">查询</a>
						<ul class="fh5co-sub-menu">
							<li><a
								href="PeoplefindThing?per_no=${session.personForm.per_no}">申请结果查询</a>
							</li>
							<li><a href="PeoplefindCheck?per_no=${session.personForm.per_no}">考勤历史记录</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li><a
				href="Peoplefind.action?per_no=${session.personForm.per_no}">个人信息</a>
			</li>
			<li><a href="#gonggao">公司公告</a></li>
			<li><a href="Peopleqian">签到/签退</a></li>
			<li><a href="lw_login.jsp">退出登录</a></li>
		</ul>
		</nav>

	</div>
	</header>

	<!-- START #fh5co-hero -->
	<aside id="fh5co-hero"
		style="background-image: url(qiantai/images/hero4.jpg);">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="fh5co-hero-wrap">
					<div class="fh5co-hero-intro">
						<h2>
							我们看到你开创出<span></span>
						</h2>
						<h1>下一个伟大梦想</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	</aside>

	<div id="fh5co-main">


		<section id="fh5co-feature">
		<div class="container">
			<!-- FEATURE -->
			<div class="row fh5co-feature-2">
				<div class="fh5co-spacer fh5co-spacer-md"></div>
				<div class="col-md-3 col-sm-6 fh5co-feature-item">
					<span class="fh5co-feature-icon fh5co-circle"><i
						class="ti-gift"></i> </span>
					<h3 class="text-center fh5co-feature-title h4 text-uppercase">请假</h3>
					<p class="text-center fh5co-feature-description">当你生病时...</p>
					<p class="text-center">
						<a href="Peopleqing" class="btn btn-primary btn-sm">COME ON...</a>
					</p>
				</div>
				<div class="col-md-3 col-sm-6 fh5co-feature-item">
					<span class="fh5co-feature-icon fh5co-circle"><i
						class="ti-mobile"></i> </span>
					<h3 class="text-center fh5co-feature-title h4 text-uppercase">出差</h3>
					<p class="text-center fh5co-feature-description">当你为公司做出贡献时...</p>
					<p class="text-center">
						<a href="Peopleqing" class="btn btn-primary btn-sm">COME ON...</a>
					</p>
				</div>

				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-3 col-sm-6 fh5co-feature-item">
					<span class="fh5co-feature-icon fh5co-circle"><i
						class="ti-pie-chart"></i> </span>
					<h3 class="text-center fh5co-feature-title h4 text-uppercase">加班</h3>
					<p class="text-center fh5co-feature-description">当你想要完成你的梦想时...</p>
					<p class="text-center">
						<a href="Peopleqing" class="btn btn-primary btn-sm">COME ON...</a>
					</p>
				</div>
				<div class="col-md-3 col-sm-6 fh5co-feature-item">
					<span class="fh5co-feature-icon fh5co-circle"><i
						class="ti-wallet"></i> </span>
					<h3 class="text-center fh5co-feature-title h4 text-uppercase">休假</h3>
					<p class="text-center fh5co-feature-description">当你想要放松时...</p>
					<p class="text-center">
						<a href="Peopleqing" class="btn btn-primary btn-sm">COME ON...</a>
					</p>
				</div>

				<!-- <div class="fh5co-spacer fh5co-spacer-md"></div> -->

			</div>
		</div>
		</section>

		<div class="fh5co-spacer fh5co-spacer-lg" id="gonggao"></div>


		<section id="fh5co-feature-slider">

		<div class="row">
			<div class="col-md-9 col-md-offset-1 col-sm-9 col-sm-offset-1">
				<div class="row">
					<div
						class="col-md-6 col-sm-6 col-xs-6 col-xxs-12 fh5co-item-slide-img">
						<img src="qiantai/images/macbook_1.png" alt="Images"
							class="img-responsive">
					</div>
					<div
						class="col-md-6 col-sm-6 col-xs-6 col-xxs-12 fh5co-item-slide-text">
						<h2>
							<%=session.getAttribute("ugg_th")%>
							<span class="fh5co-border"></span>
						</h2>
						<p><%=session.getAttribute("ugg_messages")%></p>
					</div>
					<div align="right">
						<p><%=session.getAttribute("ugg_date")%></p>
					</div>
					<div align="right">
						<a href="Gonggaohistory">历史公告</a>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<!-- </div> --> </section>
		<!-- END .item -->
	</div>


	<!-- jQuery -->
	<script src="qiantai/js/jquery-1.10.2.min.js"></script>
	<!-- jQuery Easing -->
	<script src="qiantai/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="qiantai/js/bootstrap.js"></script>
	<!-- Owl carousel -->
	<script src="qiantai/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="qiantai/js/jquery.magnific-popup.min.js"></script>
	<!-- Superfish -->
	<script src="qiantai/js/hoverIntent.js"></script>
	<script src="qiantai/js/superfish.js"></script>
	<!-- Easy Responsive Tabs -->
	<script src="qiantai/js/easyResponsiveTabs.js"></script>
	<!-- FastClick for Mobile/Tablets -->
	<script src="qiantai/js/fastclick.js"></script>
	<!-- Main JS -->
	<script src="qiantai/js/main.js"></script>

</body>
</html>