<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
    <%@ page import="java.util.Vector" %>
<%@ page import="java.util.Hashtable" %>
    <%
	Vector yglb = (Vector)session.getAttribute("department");
	Vector yglb2 = (Vector)session.getAttribute("position"); 
	String username=(String)session.getAttribute("username");// 员工列表// 员工列表
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<title>试用期管理</title>
<meta name="keywords"  content="设置关键词..." />
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
				<span class="logo-ico">
					<i class="i-l-1"></i>
					<i class="i-l-2"></i>
					<i class="i-l-3"></i>
				</span>
				<strong>人事管理系统导航</strong>
			</div>
		</div>
		
		<nav class="side-menu content mCustomScrollbar" data-mcs-theme="minimal-dark">
			<h2>
				<a href="shouye.jsp" class="InitialPage"><i class="icon-dashboard"></i>进入主页</a>
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
		<footer class="side-footer">© 西电通院第五项目组 版权所有</footer>
	</div>
	<div class="content-wrap">
		<header class="top-hd">
			<div class="hd-lt">
				<a class="icon-reorder"></a>
			</div>
			<div class="hd-rt">
				<ul>
					
					<li>
						<a><i class="icon-random"></i>清除缓存</a>
					</li>
					<li>
						<a><i class="icon-user"></i>管理员:<em><%=username%></em></a>
					</li>
					<li>
						<a><i class="icon-bell-alt"></i>系统消息</a>
					</li>
					
					<li>
						<a href="javascript:void(0)" id="JsSignOut"><i class="icon-signout"></i>安全退出</a>
					</li>
				</ul>
			</div>
		</header>
		<main class="main-cont content mCustomScrollbar">
		<div class="breadcrumb">
					<ul>
						<li><i class="icon-user"></i><a href="#">人员管理</a><i class="icon-angle-right"></i></li>
						<li><a href="#" style="color:blue;">试用期管理</a></li>
					</ul>	
				</div>
		<div class="page-wrap">
					<section class="page-hd">
						<header>
							<h4 class="title">查询条件</h4>
						</header>
						<hr>
					</section>
			<form action="TrialQuery.jsp" method="post">			
				<div class="form-group-col-2">

					<div class="form-group-col-2">

						<div class="form-group-col-2" style="float:left;">
							<p class="form-label">姓名：</p>
							<br>
							<input name="name" type="text" class="form-control form-boxed" style="margin:0px 0px 0px 60px; width:200px" />
						</div>

						<div class="form-group-col-2" style="float:left;">
							<p class="form-label">编号：</p>
							<br>
							<input name="number" type="text" class="form-control form-boxed" style="margin:0px 0px 0px 60px; width:200px" />
						</div>

						<div class="form-group-col-2" style="float:left;">
							<p class="form-label">部门:</p>
							<br>
							<select name="department" style="width:auto;">
										<%
	for(int i = 0; i < yglb.size(); i = i + 1) {
		Hashtable yg = (Hashtable)yglb.get(i);
		out.println("<option>");
		
		out.println( yg.get("name") );
		out.println("</option>");
	}
%>
									</select>
						</div>			

						<div class="form-group-col-2" style="float:left;">
							<p class="form-label">岗位:</p>
							<br>
							<select name="position" style="width:auto;">
										<%
	for(int i = 0; i < yglb2.size(); i = i + 1) {
		Hashtable yg = (Hashtable)yglb2.get(i);
		out.println("<option>");
		
		out.println( yg.get("name") );
		out.println("</option>");
	}
%>
									</select>
						</div>

					</div>

					<div class="form-group-col-2">

						<div class="form-group-col-2" style="float:left;">
							<p class="form-label" style="width:190px">试用期开始时间：</p>
							<br>
							<div class="form-cont" style="margin:0px 0px 0px 60px; width:200px">
								<input name="begin_date" type="date" placeholder="" class="form-control form-boxed" style="width:100%;" />						
								<!-- <p>示例：2016/04/07</p> -->
							</div>
						</div>

						<div class="form-group-col-2" style="float:left;">
							<p class="form-label" style="width:190px">试用期结束时间：</p>
							<br>
							<div class="form-cont" style="margin:0px 0px 0px 60px; width:200px">
							<input name="end_date" type="date" placeholder="" class="form-control form-boxed" style="width:100%;" />						
								<!-- <p>示例：2016/04/07</p> -->
							</div>
						</div>

						<div class="form-group-col-2" style="float:left;">
							<p class="form-label" style="width:165px">试用期状态:</p>
							<br>
							<input name="notes" type="text" class="form-control form-boxed" style="margin:0px 0px 0px 70px; width:100px" placeholder="请输入..." />
								<!-- <select style="margin:0px 0px 0px 70px; width:100px" placeholder="">
									<option>请选择</option>
									<option>使用中</option>
									<option>未通过</option>
									<option>已录用</option>
								</select> -->
						</div>

						<div class="form-group-col-2">	
							<br>
							<div style="margin:10px 0px 0px 770px">
							<input type="submit" class="btn btn-primary" value="提交" style="display: block;"/>
						</div>
		

					</div>	

				</div>	
			</form>		
			
			<hr>	

			</div>
			<div class="page-wrap">
				<!--开始::内容-->
				<section class="page-hd">
					<header>
						<h4 class="title">查询结果</h4>
					</header>
					<hr>
				</section>

				<table class="table table-bordered  mb-15">
					<thead>
						<tr>
							<th>姓名</th>
							<th>编号</th>
							<th>部门</th>
							<th>岗位</th>
							<th>试用期开始时间</th>
							<th>试用期结束时间</th>
							<th>试用期状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr class="cen">
							<td>赵一</td>
							<td>1001</td>
							<td>人事部</td>
							<td>文员</td>
							<td>正常</td>
							<td>2016/03/01</td>
							<td>2016/06/01</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
								<a title="删除">删除</a>
							</td>
						</tr>
						<tr class="cen">
							<td>钱二</td>
							<td>1002</td>
							<td>人事部</td>
							<td>部长</td>
							<td>正常</td>
							<td>2016/03/01</td>
							<td>2016/06/01</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
								<a title="删除">删除</a>
							</td>
						</tr>
						<tr class="cen">
							<td>张三</td>
							<td>1003</td>
							<td>财务部</td>
							<td>文员</td>
							<td>正常</td>
							<td>2016/03/01</td>
							<td>2016/06/01</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
								<a title="删除">删除</a>
							</td>
						</tr>

					</tbody>
				</table>
				
				<!--开始::结束-->
			</div>
			
			</main>
			<!--开始::内容-->
			
			
			<script>
				//分页
				$(".pagination").createPage({
			        pageCount:5,
			        current:1,
			        backFn:function(p){
			            console.log(p);
			        }
			    });
				//demo1
				var dom = document.getElementById("demo1");
				var myChart = echarts.init(dom);
				var app = {};
				option = null;
				function randomData() {
					now = new Date(+now + oneDay);
					value = value + Math.random() * 21 - 10;
					return {
						name: now.toString(),
						value: [
							[now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
							Math.round(value)
						]
					}
				}
			
				var data = [];
				var now = +new Date(1997, 9, 3);
				var oneDay = 24 * 3600 * 1000;
				var value = Math.random() * 1000;
				for (var i = 0; i < 1000; i++) {
					data.push(randomData());
				}
			
				option = {
					tooltip: {
						trigger: 'axis',
						formatter: function (params) {
							params = params[0];
							var date = new Date(params.name);
							return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
						},
						axisPointer: {
							animation: false
						}
					},
					xAxis: {
						type: 'time',
						splitLine: {
							show: false
						}
					},
					yAxis: {
						type: 'value',
						boundaryGap: [0, '100%'],
						splitLine: {
							show: false
						}
					},
					series: [{
						name: '模拟数据',
						type: 'line',
						showSymbol: false,
						hoverAnimation: false,
						data: data
					}]
				};
			
				setInterval(function () {
			
					for (var i = 0; i < 5; i++) {
						data.shift();
						data.push(randomData());
					}
			
					myChart.setOption({
						series: [{
							data: data
						}]
					});
				}, 1000);;
				if (option && typeof option === "object") {
					myChart.setOption(option, true);
				}
				
				//demo2
				
				if (option && typeof option === "object") {
					myChart.setOption(option, true);
				}	
			</script>
			<!--开始::结束-->
		</main>
		<footer class="btm-ft">
			<p class="clear">
				<span class="fl">©Copyright 2016 <a href="#" title="DeathGhost" target="_blank">成都生产实习</a></span>
				<span class="fr text-info">
					<em class="uppercase">
						<i class="icon-user"></i>
						author:第五项目组
					</em> | 
					<em class="uppercase"><i class="icon-envelope-alt"></i>
						联系QQ： <a href="http://www.mycodes.net/" target="_blank">852358870</a>
					</em>
					
				</span>
			</p>
		</footer>
	</div>
</div>
</body>
</html>
