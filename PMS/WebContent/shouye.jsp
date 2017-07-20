<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<title>EHR企业级人事管理系统</title>
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
				<a href="index.html" class="InitialPage"><i class="icon-dashboard"></i>数据概况</a>
			</h2>
			<ul>
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>进入主页<i class="icon-angle-right"></i>
						</dt>
						
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-inbox"></i>企业结构管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="button.html">部门管理</a>
						</dd>
						<dd>
							<a href="button.html">岗位管理</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-table"></i>报表管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="table.html">新招聘员工报表</a>
						</dd>
						<dd>
							<a href="table.html">离职员工报表</a>
						</dd>
						<dd>
							<a href="table.html">调动员工报表</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-user"></i>人员管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="form.html">入职管理</a>
						</dd>
						<dd>
							<a href="form.html">试用期管理</a>
						</dd>
						<dd>
							<a href="form.html">调动管理</a>
						</dd>
						<dd>
							<a href="form.html">离职管理</a>
						</dd>
						<dd>
							<a href="form.html">人员信息管理</a>
						</dd>
					</dl>
				</li>
				</ul>
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
						<a><i class="icon-user"></i>管理员:<em>DeathGhost</em></a>
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
		<div class="page-wrap">
				<!--开始::内容-->
				<section class="page-hd">
					<header>
						<h1 class="title">EHR企业级人事管理系统</h1>
						<p class="title-description">
							该系统基于JAVA-WEB技术，主要用于实现企业里的人事管理，主要功能如下：</br>
						        企业结构管理：部门管理与岗位管理</br>
						        人员管理：入职管理，试用期管理，调动管理，离职管理，人员信息管理</br>
						        报表管理：新招聘员工报表， 离职员工报表，调动员工报表</br>
						</p>
					</header>
					<hr>
				</section>
				<div class="page-wrap">
					<blockquote class="blockquote mb-20">
						<h1>项目组人员简介</h1>
						
					</blockquote>
					<div class="flow-layout col-2">
						<ul>
							<li class="child-wrap">
								<div class="panel panel-default">
									<div class="panel-bd">
										<p class="title-description">
						前端部分：马天阳，殷立，杨志<br>
						
						</p>	
									</div>
								</div>
							</li>
							<li class="child-wrap">
								<div class="panel panel-default">
									<div class="panel-bd">
										<p class="title-description">
						
						测试部分：安南</br>
						</p>	
									</div>
								</div>
							</li>
							<li class="child-wrap">
								<div class="panel panel-default">
									<div class="panel-bd">
										<p class="title-description">
						
						后端部分：普通</br>
						
						</p>	
									</div>
								</div>
							</li>
							<li class="child-wrap">
								<div class="panel panel-default">
									<div class="panel-bd">
										<p class="title-description">
						
						联系邮箱：a852358870@vip.qq.com</br>
						联系电话：15009264160</br>
						</br>
						西安电子科技大学通信工程学院</br>
					
						</p>	
									</div>
								</div>
							</li>
							<li class="child-wrap">
								<div class="panel panel-default">
									<div class="panel-bd">
									<p class="title-description">
						啦啦啦不知道写什么东西凑个数
						</p>	
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
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
