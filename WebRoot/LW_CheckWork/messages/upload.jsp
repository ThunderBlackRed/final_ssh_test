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
<base href="<%=basePath%>">

<title>文件上传</title>


<link rel="stylesheet" href="upload/control/css/zyUpload.css"
	type="text/css">

<script type="text/javascript" src="upload/jquery-1.7.2.js"></script>

<script type="text/javascript" src="upload/core/zyFile.js"></script>

<script type="text/javascript" src="upload/control/js/zyUpload.js"></script>

<script type="text/javascript" src="upload/demo.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<h1 style="text-align:center;">文件上传</h1>
	<form action="Gonggaofind" name="fanhuiForm" method="post">
		<center>
			<input type="submit" value="返回上一级">
		</center>
	</form>
	<div id="demo" class="demo"></div>
	<div
		style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
	</div>
	
</body>
</html>
