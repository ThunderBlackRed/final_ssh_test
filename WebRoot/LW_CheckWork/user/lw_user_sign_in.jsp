<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>签到/签退</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="qiantai/js/laydate.js"></script>
<meta name="keywords" content="" />
<meta name="description" content="" />
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
			<h1 class="text-center margin-bottom-15">签到/签退</h1>
			<form
				class="form-horizontal templatemo-contact-form-2 templatemo-container"
				role="form" action="PeopleSignIn" method="post">
				<div class="row">
					<div class="col-md-6">
						<h5>员工编号</h5>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-user"></i> <input type="text"
										class="form-control" id="name" name="dayCheck.per_no"
										value="<%=session.getAttribute("uNo")%>" value="readonly"
										readonly>
								</div>
							</div>
						</div>
						<h5>员工姓名</h5>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="templatemo-input-icon-container">
									<i class="fa fa-user"></i> <input type="text"
										class="form-control" id="name" name="dayCheck.per_name"
										value="<%=session.getAttribute("uName")%>" value="readonly"
										readonly>
								</div>
							</div>
						</div>
						<h5>时间</h5>
						<div class="col-md-6">
							<div class="form-group">
								<div class="col-md-12">
									<div class="templatemo-input-icon-container">
										<i class="fa fa-pencil-square-o"></i> <input
											class="form-control" id="name" placeholder="请输入时间(点击今天)"
											name="dayCheck.dc_date"
											class="laydate-icon"
											onClick="laydate({istime: false, format: 'YYYY-MM-DD hh:mm:ss'})"
											readonly />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<input type="submit" value="签到/签退"
								class="btn btn-warning pull-right">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div><br><br>
	<form action="Peoplefirst">
		<center>
			<input type="submit" value="返回主页" class="btn btn-warning">
		</center>
	</form>
	<script type="text/javascript">
		!function() {
			laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
			laydate({
				elem : '#demo'
			});//绑定元素
		}();

		//日期范围限制
		var start = {
			elem : '#start',
			format : 'YYYY-MM-DD',
			min : laydate.now(), //设定最小日期为当前日期
			max : '2099-06-16', //最大日期
			istime : true,
			istoday : false,
			choose : function(datas) {
				end.min = datas; //开始日选好后，重置结束日的最小日期
				end.start = datas //将结束日的初始值设定为开始日
			}
		};

		var end = {
			elem : '#end',
			format : 'YYYY-MM-DD',
			min : laydate.now(),
			max : '2099-06-16',
			istime : true,
			istoday : false,
			choose : function(datas) {
				start.max = datas; //结束日选好后，充值开始日的最大日期
			}
		};
		laydate(start);
		laydate(end);

		//自定义日期格式
		laydate({
			elem : '#test1',
			format : 'YYYY年MM月DD日',
			festival : true, //显示节日
			choose : function(datas) { //选择日期完毕的回调
				alert('得到：' + datas);
			}
		});

		//日期范围限定在昨天到明天
		laydate({
			elem : '#hello3',
			min : laydate.now(-1), //-1代表昨天，-2代表前天，以此类推
			max : laydate.now(+1)
		//+1代表明天，+2代表后天，以此类推
		});
	</script>
</body>
</html>
