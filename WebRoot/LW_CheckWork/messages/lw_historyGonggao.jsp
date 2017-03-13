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
<html lang="en">
<head>
<meta charset="utf-8" />
<title>联微考勤管理系统</title>

<script type="text/javascript" src="qiantai/js/laydate.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- basic styles -->

<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->

<link rel="stylesheet" href="assets/css/fullcalendar.css" />

<!-- ace styles -->

<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->

<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<style type="text/css">
.text1 {
	width: 400px;
	height: 200px;
}
</style>
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

<body>
	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> LW后台管理系统 </small> </a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->

			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/user.jpg" alt="Jason's Photo" /> <span
							class="user-info"> <small>欢迎光临,</small> ${session.personForm.per_name}${session.personForm.per_post}</span>
							<i class="icon-caret-down"></i> </a>

						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<!-- <li><a href="#"> <i class="icon-cog"></i> 设置 </a>
							</li> -->

							<li><a
								href="Personfind.action?per_no=${session.personForm.per_no}">
									<i class="icon-user"></i> 个人资料 </a></li>

							<li class="divider"></li>

							<li><a href="lw_login.jsp"> <i class="icon-off"></i> 退出
							</a></li>
						</ul>
					</li>
				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.container -->
	</div>

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span> </a>

			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="icon-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="icon-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="icon-group"></i>
						</button>

						<button class="btn btn-danger">
							<i class="icon-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span> <span class="btn btn-info"></span>

						<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
					</div>
				</div>
				<!-- #sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li><a href="PersonList"> <i class="icon-dashboard"></i> <span
							class="menu-text"> 员工管理 </span> </a></li>

					<li><a href="departmentList"> <i class="icon-text-width"></i>
							<span class="menu-text"> 部门管理</span> </a></li>

					<li><a href="MCList"> <i class="icon-list-alt"></i> <span
							class="menu-text"> 考勤管理 </span> </a></li>

					<li><a href="ThingList"> <i class="icon-picture"></i> <span
							class="menu-text"> 差假管理 </span> </a></li>

					<li class="active"><a href="Gonggaofind"> <i
							class="icon-picture"></i> <span class="menu-text"> 公告管理 </span> </a>
					</li>
					<li><a href="PeoplefindCheckHoutai"> <i
							class="icon-list-alt"></i> <span class="menu-text"> 打卡管理 </span>
					</a>
					</li>
				</ul>
				<!-- /.nav-list -->

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>
				</div>

				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active">公司公告</li>
					</ul>
					<!-- .breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="icon-search nav-search-icon"></i> </span>
						</form>
					</div>
					<!-- #nav-search -->
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1>
							公告管理 <small> <i class="icon-double-angle-right"></i> 查看 </small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
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
											<td><s:property value="gg_no" /></td>
											<td><s:property value="gg_th" /></td>
											<td><s:property value="gg_messages" /></td>
											<td><s:property value="gg_date" /></td>
										</tr>
									</s:iterator>
								</table>
								<br> <br> 共
								<s:property value="intRowCount" />
								记录&nbsp;&nbsp; 第
								<s:property value="pageNow" />
								页&nbsp;&nbsp;
								<s:url id="url_pre" value="GonggaohistoryHoutai.action">
									<s:param name="pageNow" value="pageNow-1"></s:param>
								</s:url>

								<s:url id="url_next" value="GonggaohistoryHoutai.action">
									<s:param name="pageNow" value="pageNow+1"></s:param>
								</s:url>
								<s:iterator value="Newss" status="status">
									<s:url id="url" value="GonggaohistoryHoutai.action">
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
							<center>
								<form action="Gonggaofind" name="fanhuiForm" method="post">
									<input type="submit" value="返回">
								</form>
							</center>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->
		</div>
		<!-- /.main-container-inner -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i> </a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/fullcalendar.min.js"></script>
	<script src="assets/js/bootbox.min.js"></script>

	<!-- ace scripts -->

	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript">
		jQuery(function($) {

			/* initialize the external events
			 -----------------------------------------------------------------*/

			$('#external-events div.external-event').each(function() {

				// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
				// it doesn't need to have a start or end
				var eventObject = {
					title : $.trim($(this).text())
				// use the element's text as the event title
				};

				// store the Event Object in the DOM element so we can get to it later
				$(this).data('eventObject', eventObject);

				// make the event draggable using jQuery UI
				$(this).draggable({
					zIndex : 999,
					revert : true, // will cause the event to go back to its
					revertDuration : 0
				//  original position after the drag
				});

			});

			/* initialize the calendar
			-----------------------------------------------------------------*/

			var date = new Date();
			var d = date.getDate();
			var m = date.getMonth();
			var y = date.getFullYear();

			var calendar = $('#calendar')
					.fullCalendar(
							{
								buttonText : {
									prev : '<i class="icon-chevron-left"></i>',
									next : '<i class="icon-chevron-right"></i>'
								},

								header : {
									left : 'prev,next today',
									center : 'title',
									right : 'month,agendaWeek,agendaDay'
								},
								events : [ {
									title : 'All Day Event',
									start : new Date(y, m, 1),
									className : 'label-important'
								}, {
									title : 'Long Event',
									start : new Date(y, m, d - 5),
									end : new Date(y, m, d - 2),
									className : 'label-success'
								}, {
									title : 'Some Event',
									start : new Date(y, m, d - 3, 16, 0),
									allDay : false
								} ],
								editable : true,
								droppable : true, // this allows things to be dropped onto the calendar !!!
								drop : function(date, allDay) { // this function is called when something is dropped

									// retrieve the dropped element's stored Event Object
									var originalEventObject = $(this).data(
											'eventObject');
									var $extraEventClass = $(this).attr(
											'data-class');

									// we need to copy it, so that multiple events don't have a reference to the same object
									var copiedEventObject = $.extend({},
											originalEventObject);

									// assign it the date that was reported
									copiedEventObject.start = date;
									copiedEventObject.allDay = allDay;
									if ($extraEventClass)
										copiedEventObject['className'] = [ $extraEventClass ];

									// render the event on the calendar
									// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
									$('#calendar').fullCalendar('renderEvent',
											copiedEventObject, true);

									// is the "remove after drop" checkbox checked?
									if ($('#drop-remove').is(':checked')) {
										// if so, remove the element from the "Draggable Events" list
										$(this).remove();
									}

								},
								selectable : true,
								selectHelper : true,
								select : function(start, end, allDay) {

									bootbox.prompt("New Event Title:",
											function(title) {
												if (title !== null) {
													calendar.fullCalendar(
															'renderEvent', {
																title : title,
																start : start,
																end : end,
																allDay : allDay
															}, true // make the event "stick"
													);
												}
											});

									calendar.fullCalendar('unselect');

								},
								eventClick : function(calEvent, jsEvent, view) {

									var form = $("<form class='form-inline'><label>Change event name &nbsp;</label></form>");
									form
											.append("<input class='middle' autocomplete=off type=text value='" + calEvent.title + "' /> ");
									form
											.append("<button type='submit' class='btn btn-sm btn-success'><i class='icon-ok'></i> Save</button>");

									var div = bootbox
											.dialog({
												message : form,

												buttons : {
													"delete" : {
														"label" : "<i class='icon-trash'></i> Delete Event",
														"className" : "btn-sm btn-danger",
														"callback" : function() {
															calendar
																	.fullCalendar(
																			'removeEvents',
																			function(
																					ev) {
																				return (ev._id == calEvent._id);
																			})
														}
													},
													"close" : {
														"label" : "<i class='icon-remove'></i> Close",
														"className" : "btn-sm"
													}
												}

											});

									form.on('submit', function() {
										calEvent.title = form.find(
												"input[type=text]").val();
										calendar.fullCalendar('updateEvent',
												calEvent);
										div.modal("hide");
										return false;
									});

									//console.log(calEvent.id);
									//console.log(jsEvent);
									//console.log(view);

									// change the border color just for fun
									//$(this).css('border-color', 'red');

								}

							});

		})
	</script>
	<script type="text/javascript">
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3Fe9e1d61340ff3d9495a8cca04ebdb49d' type='text/javascript'%3E%3C/script%3E"));
	</script>
</body>
</html>
