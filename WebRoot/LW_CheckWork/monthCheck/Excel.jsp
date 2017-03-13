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
				<th style="width:200px;">Ա�����</th>
				<th style="width:200px;">Ա������</th>
				<th style="width:200px;">�ϰ�ʱ��</th>
				<th style="width:200px;">�°�ʱ��</th>
				<th style="width:200px;">��ʼ����</th>
				<th style="width:200px;">�ݼ�����</th>
				<th style="width:200px;">�������</th>
				<th style="width:200px;">��������</th>
				<th style="width:200px;">�Ӱ�����</th>
				<th style="width:200px;">�ٵ�����</th>
				<th style="width:200px;">���˴���</th>
				<th style="width:200px;">��������</th>
			</tr>
		</thead>
		<tr>
			<td>PE01</td>
			<td>������</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>1��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>
		<tr>
			<td>PE02</td>
			<td>����</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>
		<tr>
			<td>PE03</td>
			<td>����</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>
		<tr>
			<td>PE04</td>
			<td>����2</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>
		<tr>
			<td>PE05</td>
			<td>����3</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>
		<tr>
			<td>PE06</td>
			<td>����4</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>
		<tr>
			<td>PE07</td>
			<td>����5</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>
		<tr>
			<td>PE08</td>
			<td>����6</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>
		<tr>
			<td>PE09</td>
			<td>����7</td>
			<td>8:30</td>
			<td>18:00</td>
			<td>2016-09-01</td>
			<td>8��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
			<td>0��</td>
		</tr>

	</table>
</body>
</html>
