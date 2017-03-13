<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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

<title>Excel</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<%
		String exportToExcel = request.getParameter("exportToExcel");
		if (exportToExcel != null
				&& exportToExcel.toString().equalsIgnoreCase("YES")) {
			response.setContentType("application/vnd.ms-excel");
			response.setHeader("Content-Disposition", "inline; filename="
					+ "excel.xls");

		}
	%>
	<table border="1" class="persontable" width="70%">
		<thead>
			<tr>
				<th style="width:200px;">员工编号</th>
				<th style="width:200px;">员工姓名</th>
				<th style="width:200px;">上班时间</th>
				<th style="width:200px;">下班时间</th>
				<th style="width:200px;">开始日期</th>
				<th style="width:200px;">休假天数</th>
				<th style="width:200px;">请假天数</th>
				<th style="width:200px;">出差天数</th>
				<th style="width:200px;">加班天数</th>
				<th style="width:200px;">迟到次数</th>
				<th style="width:200px;">早退次数</th>
				<th style="width:200px;">旷工次数</th>
			</tr>
		</thead>
		<tr>
			<td>PE01</td>
			<td>张苏纳</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>1天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>
		<tr>
			<td>PE02</td>
			<td>王武</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>0天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>
		<tr>
			<td>PE03</td>
			<td>王武</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>0天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>
		<tr>
			<td>PE04</td>
			<td>王武2</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>0天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>
		<tr>
			<td>PE05</td>
			<td>王武3</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>0天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>
		<tr>
			<td>PE06</td>
			<td>王武4</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>0天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>
		<tr>
			<td>PE07</td>
			<td>王武5</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>0天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>
		<tr>
			<td>PE08</td>
			<td>王武6</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>0天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>
		<tr>
			<td>PE09</td>
			<td>王武7</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8天</td>
			<td>0天</td>
			<td>0天</td>
			<td>0次</td>
			<td>0次</td>
			<td>0次</td>
			<td>0天</td>
		</tr>

	</table>
</body>
</html>
