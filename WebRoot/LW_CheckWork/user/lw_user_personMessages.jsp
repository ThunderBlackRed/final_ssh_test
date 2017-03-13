<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>个人信息</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="qiantai-two/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="qiantai-two/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="qiantai-two/css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css">
<link href="qiantai-two/css/templatemo_style.css" rel="stylesheet"
	type="text/css">
</head>
<body class="templatemo-bg-gray">


	<div class="container">
		<div class="col-md-12">
			<h1 class="text-center margin-bottom-15">个人信息</h1>
			<form
				class="form-horizontal templatemo-contact-form-2 templatemo-container"
				role="form" action="PeopleupdateUser" method="post">
				<div class="row">
					<div class="col-md-6">
						<h5>员工编号</h5>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-user"></i> <input type="text"
										class="form-control" id="name" name="personPage.per_no"
										value="${personPage.per_no}" value="readonly" readonly>
								</div>
							</div>
						</div>
						<h5>员工职位</h5>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-user"></i> <input type="text"
										class="form-control" id="name" name="personPage.per_post"
										value="${personPage.per_post}" value="readonly" readonly>
								</div>
							</div>
						</div>
						<h5>所属部门编号</h5>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-user"></i> <input type="text"
										class="form-control" id="name" name="personPage.de_no"
										value="${personPage.de_no}" value="readonly" readonly>
								</div>
							</div>
						</div>
						<h5>所属部门</h5>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-user"></i> <input type="text"
										class="form-control" id="name" name="personPage.de_name"
										value="${personPage.de_name}" value="readonly" readonly>
								</div>
							</div>
						</div>
					</div>
					<h5>员工姓名</h5>
					<div class="col-md-6">
						<div class="form-group">
							<div class="col-md-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-pencil-square-o"></i> <input type="text"
										class="form-control" id="name" name="personPage.per_name"
										value="${personPage.per_name}">
								</div>
							</div>
						</div>
					</div>
					<h5>性别</h5>
					<div class="col-md-6">
						<div class="form-group">
							<div class="col-md-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-pencil-square-o"></i> <input type="text"
										class="form-control" id="name" name="personPage.per_sex"
										value="${personPage.per_sex}">
								</div>
							</div>
						</div>
					</div>
					<h5>联系方式</h5>
					<div class="col-md-6">
						<div class="form-group">
							<div class="col-md-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-pencil-square-o"></i> <input type="text"
										class="form-control" id="name" name="personPage.per_phone"
										value="${personPage.per_phone}">
								</div>
							</div>
						</div>
					</div>
					<h5>登录密码</h5>
					<div class="col-md-6">
						<div class="form-group">
							<div class="col-md-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-pencil-square-o"></i> <input type="text"
										class="form-control" id="name" name="personPage.per_pwd"
										value="${personPage.per_pwd}">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<input type="submit" value="提交修改/返回首页"
							class="btn btn-warning pull-right">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>