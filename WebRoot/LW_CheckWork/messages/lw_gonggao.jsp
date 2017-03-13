<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="form">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<link rel="stylesheet" href="assets/css/admin.css">
</head>
<body>
	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<strong>Office Automation</strong> <small>后台管理</small>
		</div>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li class="am-dropdown" data-am-dropdown><a
					class="am-dropdown-toggle" data-am-dropdown-toggle href="#"><span
						class="am-icon-users"></span>
						${session.personForm.per_name}${session.personForm.per_post} <span
						class="am-icon-caret-down"></span> </a>

					<ul class="am-dropdown-content">
						<li><a
							href="Personfind.action?per_no=${session.personForm.per_no}"><span
								class="am-icon-user"></span> 资料</a></li>
						<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
						<li><a href="lw_login.jsp"><span
								class="am-icon-power-off"></span> 退出</a></li>
					</ul></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<ul class="am-list admin-sidebar-list">
					<li><a href="Personlogin"><span class="am-icon-home"></span>
							首页</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-file"></span> 员工管理<span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="PersonList" class="am-cf"><span
									class="am-icon-check"></span> 个人资料<span
									class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
							<li><a href="MCList"><span class="am-icon-puzzle-piece"></span>
									考勤记录</a></li>
							<li><a href="ThingList"><span class="am-icon-th"></span>
									申请管理<span
									class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
							<li><a href="#"><span class="am-icon-calendar"></span>
									打卡日志</a></li>
						</ul></li>
					<li><a href="departmentList"><span class="am-icon-table"></span>
							部门信息</a></li>
					<li><a href="Gonggaofind"><span
							class="am-icon-pencil-square-o"></span> 发布公告</a></li>
					<li><a href="lw_login.jsp"><span class="am-icon-sign-out"></span>
							注销</a></li>
				</ul>

				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd">
						<p>
							<span class="am-icon-bookmark"></span> 公告
						</p>
						<p>时光静好，与君语；细水流年，与君同。—— BigMan</p>
					</div>
				</div>
			</div>
		</div>
		<!-- sidebar end -->
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding am-padding-bottom-0">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">公告</strong> / <small>公告发布</small>
					</div>
				</div>

				<hr>

				<div class="am-tabs am-margin" data-am-tabs>
					<ul class="am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#tab1">基本信息</a></li>
						<li><a href="#tab2">详细描述</a></li>
					</ul>

					<div class="am-tabs-bd">
						<div class="am-tab-panel am-fade am-in am-active" id="tab1">
							<div class="am-g am-margin-top">
								<div class="am-u-sm-4 am-u-md-2 am-text-right">所属等级</div>
								<div class="am-u-sm-8 am-u-md-10">
									<select data-am-selected="{btnSize: 'sm'}">
										<option value="option1">3</option>
										<option value="option2">2</option>
										<option value="option3">1</option>
									</select>
								</div>
							</div>

							<div class="am-g am-margin-top">
								<div class="am-u-sm-4 am-u-md-2 am-text-right">所属类别</div>
								<div class="am-u-sm-8 am-u-md-10">
									<div class="am-btn-group" data-am-button>
										<label class="am-btn am-btn-default am-btn-xs"> <input
											type="radio" name="options" id="option1"> 了解
										</label> <label class="am-btn am-btn-default am-btn-xs"> <input
											type="radio" name="options" id="option2"> 一般
										</label> <label class="am-btn am-btn-default am-btn-xs"> <input
											type="radio" name="options" id="option3"> 重要
										</label>
									</div>
								</div>
							</div>

							<div class="am-g am-margin-top">
								<div class="am-u-sm-4 am-u-md-2 am-text-right">公告类型</div>
								<div class="am-u-sm-8 am-u-md-10">
									<div class="am-btn-group" data-am-button>
										<label class="am-btn am-btn-default am-btn-xs"> <input
											type="checkbox"> 全体公告
										</label> <label class="am-btn am-btn-default am-btn-xs"> <input
											type="checkbox"> 部门公告
										</label> <label class="am-btn am-btn-default am-btn-xs"> <input
											type="checkbox"> 行政公告
										</label> <label class="am-btn am-btn-default am-btn-xs"> <input
											type="checkbox"> 通知
										</label>
									</div>
								</div>
							</div>

							<div class="am-g am-margin-top">
								<div class="am-u-sm-4 am-u-md-2 am-text-right">发布日期</div>
								<div class="am-u-sm-8 am-u-md-10">
									<form action="" class="am-form am-form-inline">
										<!-- <div class="am-form-group am-form-icon">
											<i class="am-icon-calendar"></i> <input type="date"
												class="am-form-field am-input-sm" placeholder="日期"
												data-am-datepicker>
										</div> -->


										<div class="am-input-group am-datepicker-date"
											data-am-datepicker="{format: 'yyyy-mm-dd', viewMode: 'years'}">
											<input type="text" class="am-form-field" placeholder="日历组件"
												readonly> <span
												class="am-input-group-btn am-datepicker-add-on">
												<button class="am-btn am-btn-default" type="button">
													<span class="am-icon-calendar"></span>
												</button>
											</span>
										</div>
									</form>
								</div>
							</div>


						</div>

						<div class="am-tab-panel am-fade" id="tab2">
							<form class="am-form">
								<div class="am-g am-margin-top">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">公告标题</div>
									<div class="am-u-sm-8 am-u-md-4">
										<input type="text" class="am-input-sm">
									</div>
									<div class="am-hide-sm-only am-u-md-6">*必填</div>
								</div>


								<div class="am-g am-margin-top">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">内容摘要</div>
									<div class="am-u-sm-8 am-u-md-4">
										<input type="text" class="am-input-sm">
									</div>
									<div class="am-u-sm-12 am-u-md-6">不填写则自动截取内容前255字符</div>
								</div>

								<div class="am-g am-margin-top-sm">
									<div class="am-u-sm-12 am-u-md-2 am-text-right admin-form-text">
										内容描述</div>
									<div class="am-u-sm-12 am-u-md-10">
										<textarea rows="10"></textarea>
									</div>
								</div>

							</form>
						</div>

					</div>
				</div>

				<div class="am-margin">
					<button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
					<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
				</div>
			</div>
			<footer class="admin-content-footer">
				<hr>
				<p class="am-padding-left">© You Can Do Better . Belive Me...</p>
			</footer>
		</div>
	</div>

	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>