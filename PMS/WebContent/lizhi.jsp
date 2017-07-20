<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
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
				<a href="shouye.jsp" class="InitialPage"><i class="icon-dashboard"></i>进入主页</a>
			</h2>
			<ul>
				
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
							<a href="ruzhi.jsp">入职管理</a>
						</dd>
						<dd>
							<a href="form.html">试用期管理</a>
						</dd>
						<dd>
							<a href="form.html">调动管理</a>
						</dd>
						<dd>
							<a href="lizhi.jsp">离职管理</a>
						</dd>
						<dd>
							<a href="form.html">人员信息管理</a>
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
		<main class="main-cont content mCustomScrollbar " style="background:white">
		<div class="breadcrumb">
					<ul>
						<li><i class="icon-user"></i><a href="#">人员管理</a><i class="icon-angle-right"></i></li>
						<li><a href="#" style="color:blue;">离职管理</a></li>
					</ul>	
				</div>
		 <div style="border:2px solid #d7dde4; height: 400px; width: 100%; margin-top:70px;">
         <div style="background: #d7dde4;width: 100%;height: 40px;line-height: 40px;">
         离职查询
         </div>
         <div class="box1 left">
         <p style="font-weight: 700; font-size:15px">部门名称:</p>
         <input type="text" class="input1">
         </div>
         <div class="box1 left">
         <p style="font-weight: 700; font-size:15px">岗位名称:</p>
         <input type="text" class="input1">

         </div>
         <div class="box1 left">
         <p  style="font-weight: 700; font-size:15px">员工编号:</p>
         <input type="text" class="input1">

         </div>
         <div class="box1 left">
         <p  style="font-weight: 700; font-size:15px">员工姓名:</p>
         <input type="text" class="input1">
         </div>

         <div class="box2 left">
         <p  style="font-weight: 700; font-size:15px">开始时间:</p>
         <input type="date" class="input2">

         </div>
         <div class="box2 left">
         <p  style="font-weight: 700; font-size:15px">结束时间:</p>
         <input type="date"  class="input2">
		</div>
   		 <div class="box2 left " style="margin-top:40px;">
   		 <p  style="font-weight: 700; font-size:15px; ">离职原因:</p>
   		 <select name="" id="">
   		 <option value="辞职">辞职</option>
   		 <option value="公司开除">公司开除</option>
   		 </select>
   		 
   		 </div>



          <div class="box3 right">
         <button class="btn btn-info radius" ><i class="icon-search"></i>查询</button>
         </div> 
		

		</div>
		</main>
		<button type="button" class="btn btn-default btn-sm">
          <span class="icon-search"></span> Search
        </button>
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