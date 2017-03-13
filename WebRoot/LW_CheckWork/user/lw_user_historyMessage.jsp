<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

<title>历史公告</title>
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
<style type="text/css">
table.persontable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 0px;
	border-color: #666666;
	cxs border-collapse: collapse;
}

table.persontable th {
	text-align: center;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}

table.persontable td {
	text-align: center;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>
</head>

<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="text-center margin-bottom-15">历史公告</h1>
			<form
				class="form-horizontal templatemo-contact-form-2 templatemo-container"
				role="form" action="Peoplefirst" method="post">
				<div class="row">
					<div align="center">
						<table class="persontable">
							<thead>
								<tr>
									<th style="width:200px;">公告编号</th>
									<th style="width:200px;">公告标题</th>
									<th style="width:200px;">公告内容</th>
									<th style="width:200px;">公告时间</th>
								</tr>
							</thead>
							<s:iterator value="ggPage">
								<tr>
									<td><s:property value="gg_no" />
									</td>
									<td><s:property value="gg_th" />
									</td>
									<td><s:property value="gg_messages" />
									</td>
									<td><s:property value="gg_date" />
									</td>
								</tr>
							</s:iterator>
						</table>
						<br> <br> 共
						<s:property value="intRowCount" />
						记录&nbsp;&nbsp; 第
						<s:property value="pageNow" />
						页&nbsp;&nbsp;
						<s:url id="url_pre" value="Gonggaohistory.action">
							<s:param name="pageNow" value="pageNow-1"></s:param>
						</s:url>

						<s:url id="url_next" value="Gonggaohistory.action">
							<s:param name="pageNow" value="pageNow+1"></s:param>
						</s:url>
						<s:iterator value="Newss" status="status">
							<s:url id="url" value="Gonggaohistory.action">
								<s:param name="pageNow" value="pageNow" />
							</s:url>
						</s:iterator>
						<s:if test="pageNow==1">
									最前一页
								</s:if>
						<s:else>
							<s:a href="%{url_pre}">上一页</s:a>
						</s:else>
						<s:if test="pageNow==k">
									最后一页
								</s:if>
						<s:else>
							<s:a href="%{url_next}">下一页</s:a>
						</s:else>
						<br> <br>
					</div>
					<br> <br>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<input type="submit" value="返回首页"
							class="btn btn-warning pull-right">
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
