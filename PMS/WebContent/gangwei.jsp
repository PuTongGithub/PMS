<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>

<%
	Vector yglb = (Vector) session.getAttribute("department");
	Vector yglb2 = (Vector) session.getAttribute("position"); 
	Vector position = (Vector) request.getAttribute("position");// 员工列表
	String username = (String) session.getAttribute("username");// 员工列表
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>岗位管理</title>
<meta name="keywords" content="设置关键词..." />
<meta name="description" content="设置描述..." />
<meta name="author" content="DeathGhost" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script src="javascript/jquery.js"></script>
<script src="javascript/plug-ins/customScrollbar.min.js"></script>
<script src="javascript/plug-ins/echarts.min.js"></script>
<script src="javascript/plug-ins/layerUi/layer.js"></script>
<script src="editor/ueditor.config.js"></script>
<script src="editor/ueditor.all.js"></script>
<script src="javascript/plug-ins/pagination.js"></script>
<script src="javascript/public.js"></script>
</head>
<body>
	<div class="main-wrap">
		<div class="side-nav">
			<div class="side-logo">
				<div class="logo">
					<span class="logo-ico"> <i class="i-l-1"></i> <i
						class="i-l-2"></i> <i class="i-l-3"></i>
					</span> <strong>人事管理系统导航</strong>
				</div>
			</div>

			<nav class="side-menu content mCustomScrollbar"
				data-mcs-theme="minimal-dark">
				<h2>
					<a href="shouye.jsp" class="InitialPage"><i
						class="icon-dashboard"></i>进入主页</a>
				</h2>
				<ul>

					<li>
						<dl>
							<dt>
								<i class="icon-inbox"></i>企业结构管理<i class="icon-angle-right"></i>
							</dt>
							<dd>
								<a href="bumenguanli.jsp">部门管理</a>
							</dd>
							<dd>
								<a href="gangwei.jsp">岗位管理</a>
							</dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt>
								<i class="icon-user"></i>人员管理<i class="icon-angle-right"></i>
							</dt>
							<dd>
								<a href="ruzhi.jsp">入职管理</a>
							</dd>
							<dd>
								<a href="shiyongqi.jsp">试用期管理</a>
							</dd>

							<dd>
								<a href="lizhi.jsp">离职管理</a>
							</dd>
							<dd>
								<a href="yuangongxinxi.jsp">人员信息管理</a>
							</dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt>
								<i class="icon-table"></i>报表管理<i class="icon-angle-right"></i>
							</dt>
							<dd>
								<a href="xinjin.jsp">新招聘员工报表</a>
							</dd>
							<dd>
								<a href="lizhibaobiao.jsp">离职员工报表</a>
							</dd>
							<dd>
								<a href="diaodongbaobiao.jsp">调动员工报表</a>
							</dd>
						</dl>
					</li>
			</nav>

			<footer class="side-footer">© 第五项目组 版权所有</footer>

		</div>
		<div class="content-wrap">
			<header class="top-hd">
				<div class="hd-lt">
					<a class="icon-reorder"></a>
				</div>
				<div class="hd-rt">
					<ul>
						<li><a><i class="icon-user"></i>管理员:<em><%=username %></em></a></li>
						<li><a><i class="icon-bell-alt"></i>系统消息</a></li>
						<li><a href="index.jsp" id="JsSignOu"><i
								class="icon-signout"></i>安全退出</a></li>
					</ul>
				</div>
			</header>

			<main class="main-cont content mCustomScrollbar "
				style="background:white;">
			<div class="breadcrumb">
				<ul>
					<li><i class="icon-inbox"></i><a href="#">企业结构管理</a><i
						class="icon-angle-right"></i></li>
					<li><a href="#" style="color: blue;">岗位管理</a></li>
				</ul>
			</div>
			<div
				style="border: 2px solid #d7dde4; height: 240px; width: 100%; margin-top: 20px;">
				<div
					style="background: #d7dde4; width: 100%; height: 40px; line-height: 40px;">
					查询条件</div>
				<form action="PositionQuery.jsp" method="post">
					<div class="box1 left">
						<p style="font-weight: 700; font-size: 15px">岗位名称:</p>
						<input name="name" type="text" class="input1">
					</div>
					<div class="box1 left"></div>
					<div class="box1 left"></div>
					<div class="box1 left">
						<p style="font-weight: 700; font-size: 15px">岗位编号:</p>
						<input name="number" type="text" class="input1">
					</div>
					<div class="box3 right">
						<button class="btn btn-info radius" type="submit">
							<i class="icon-search"></i>查询
						</button>
					</div>
				</form>
			</div>
			<div
				style="border: 2px solid #d7dde4; height: 500px; width: 100%; margin-top: 50px;">
				<div
					style="background: #d7dde4; width: 100%; height: 40px; line-height: 40px;">
					查询结果</div>
				<div class=" left" style="margin: 15px 5px 10px 5px">
					<button id="a7" class="btn btn-info" style="background: #46a546">
						<i class="icon icon-plus"></i>增加
					</button>
				</div>
				<div class=" right" style="margin: 15px 5px 10px 5px">
					<button id="a8" class="btn btn-danger">
						<i class="icon icon-remove"></i>删除
					</button>
				</div>
				<table class="table table-bordered table-striped table-hover "
					style="margin-top: 15px;">
					<thead>
						<tr>
							<th>编号</th>
							<th>名称</th>
							<th>所属部门</th>
							

						</tr>
					</thead>
					<tbody>
	<% 
						if(position!=null){
	for(int i = 0; i < position.size(); i = i + 1) {
		Hashtable yg = (Hashtable)position.get(i);
		out.println("<tr>");
		out.println("<td>" + yg.get("number") + "</td>");
		out.println("<td>" + yg.get("name") + "</td>");
		out.println("<td>" + yg.get("department") + "</td>");
		out.println("</tr>");
	}
     }
	%>
					</tbody>
				</table>

			</div>
			</main>

			<footer class="btm-ft">
				<p class="clear">
					<span class="fl">©Copyright 2016 <a href="#"
						title="DeathGhost" target="_blank">成都生产实习</a></span> <span
						class="fr text-info"> <em class="uppercase"> <i
							class="icon-user"></i> author:第五项目组
					</em> | <em class="uppercase"><i class="icon-envelope-alt"></i>
							联系QQ： <a href="http://www.mycodes.net/" target="_blank">852358870</a>
					</em>

					</span>
				</p>
			</footer>
		</div>
	</div>

	<script>
		$('#a7').click(function() {
			layer.open({
				type : 2,
				title : false,
				closeBtn : 0, //不显示关闭按钮
				shade : [ 0 ],
				area : [ '340px', '215px' ],
				offset : 'rb', //右下角弹出
				time : 1000, //2秒后自动关闭
				anim : 2,
				content : [ 'gangweizengjia.jsp', 'no' ], //iframe的url，no代表不显示滚动条
				end : function() { //此处用于演示
					layer.open({
						type : 2,
						title : '岗位增加',
						shadeClose : true,
						shade : false,
						maxmin : true, //开启最大化最小化按钮
						area : [ '400px', '450px' ],
						content : 'gangweizengjia.jsp'
					});
				}
			});
		});
		$('#a8').click(function() {
			layer.open({
				type : 2,
				title : false,
				closeBtn : 0, //不显示关闭按钮
				shade : [ 0 ],
				area : [ '340px', '215px' ],
				offset : 'rb', //右下角弹出
				time : 1000, //2秒后自动关闭
				anim : 2,
				content : [ 'bumenshanchu.jsp', 'no' ], //iframe的url，no代表不显示滚动条
				end : function() { //此处用于演示
					layer.open({
						type : 2,
						title : '部门删除',
						shadeClose : true,
						shade : false,
						maxmin : true, //开启最大化最小化按钮
						area : [ '420px', '270px' ],
						content : 'gangweishanchu.jsp'
					});
				}
			});
		});
	</script>
</body>
</html>
