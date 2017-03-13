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
						<strong class="am-text-primary am-text-lg">员工</strong> / <small>个人信息</small>
					</div>
				</div>

				<hr>

				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
						<!--<div class="am-panel am-panel-default">
							<div class="am-panel-bd">
								<div class="am-g">
									<div class="am-u-md-4">
										<img class="am-img-circle am-img-thumbnail"
											src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/200/h/200/q/80"
											alt="" />
									</div>
									 <div class="am-u-md-8">
										<p>
											你可以使用<a href="#">gravatar.com</a>提供的头像或者使用本地上传头像。
										</p>
										<form class="am-form">
											<div class="am-form-group">
												<input type="file" id="user-pic">
												<p class="am-form-help">请选择要上传的文件...</p>
												<button type="button"
													class="am-btn am-btn-primary am-btn-xs">保存</button>
											</div>
										</form>
									</div> 
								</div>
							</div>
						</div>-->
					</div>

					<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
						<form class="am-form am-form-horizontal">
							<div class="am-form-group">
								<label for="user-no" class="am-u-sm-3 am-form-label">员工编号
									/ No</label>
								<div class="am-u-sm-9">
									<input type="text" readonly value="${session.personForm.per_no}" id="user-no">
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">员工姓名
									/ Name</label>
								<div class="am-u-sm-9">
									<input type="text" readonly value="${session.personForm.per_name}" id="user-name">
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-post" class="am-u-sm-3 am-form-label">员工职位
									/ Post</label>
								<div class="am-u-sm-9">
									<input type="text" value="${session.personForm.per_post}" id="user-post">
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-department" class="am-u-sm-3 am-form-label">部门名称
									/ Det</label>
								<div class="am-u-sm-9">
									<input type="text" value="${session.personForm.de_name}" id="user-department">
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-phone" class="am-u-sm-3 am-form-label">联系方式
									/ Tel</label>
								<div class="am-u-sm-9">
									<input type="text" value="${session.personForm.per_phone}" pattern="[0-9]*" id="user-phone">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="user-admin" class="am-u-sm-3 am-form-label">管理员标识
									/ Adm</label>
								<div class="am-u-sm-9">
									<input type="checkbox" checked="checked"  value="${session.personForm.per_admin}" id="user-phone">
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<button type="button" class="am-btn am-btn-primary">保存修改</button>
								</div>
							</div>
						</form>
					</div>
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