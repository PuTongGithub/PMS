<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>GD人事管理系统</title>
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
				<strong>人事管理系统</strong>
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
					<li>
						<a><i class="icon-user"></i>管理员:<em>GD</em></a>
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
		
		<main class="main-cont content mCustomScrollbar " style="background:white;">
		<div class="breadcrumb">
					<ul>
						<li><i class="icon-user"></i><a href="#">人员管理</a><i class="icon-angle-right"></i></li>
						<li><a href="#" style="color:blue;">员工信息查询</a></li>
					</ul>	
				</div>
			<div style="border:2px solid #d7dde4; height: 240px; width: 100%; margin-top:70px;">
			<div style="background: #d7dde4;width: 100%;height: 40px;line-height: 40px;">
    查询条件
         </div>
			<form action=""  >
		<div class="box1 left">
         <p style="font-weight: 700; font-size:15px">部门名称:</p>
         <input type="text" class="input1">
         </div>
         <div class="box1 left">
         
         </div>
         <div class="box1 left">
        
         </div>
         <div class="box1 left">
         <p  style="font-weight: 700; font-size:15px">部门编号:</p>
         <input type="text" class="input1">
         </div>
           <div class="box3 right">
         <button class="btn btn-info radius" ><i class="icon-search"></i>查询</button>
         </div> 
         </form>
			</div>
			<div style="border:2px solid #d7dde4; height: 500px; width: 100%; margin-top:50px;">
			<div style="background: #d7dde4;width: 100%;height: 40px;line-height: 40px;">
        	查询结果
         </div>
			<table class="table table-bordered table-striped table-hover " style="margin-top:15px;">
					<thead>
						<tr>
							<th>id</th>
							<th>编号</th>
							<th>部门名称</th>
							<th>类型</th>
							<th>电话</th>
							<th>传真</th>
							<th>描述</th>
						</tr>
					</thead>
					<tbody>
						<tr class="cen">
							<td>#001</td>
							<td >赵一</td>
							<td>职员</td>
							<td>人事部</td>
							<td>在职</td>
							<td>12245345523</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
								
								<a title="删除">删除</a>
							</td>
						</tr>
						<tr class="cen">
							<td>#002</td>
							<td >钱二</td>
							<td>经理</td>
							<td>财务部</td>
							<td>在职</td>
							<td>246334232353</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
							
								<a title="删除">删除</a>
							</td>
						</tr>
						<tr class="cen">
							<td>#003</td>
							<td >孙三</td>
							<td>秘书</td>
							<td>技术部</td>
							<td>在职</td>
							<td><form><button></button> <input type="text" style="display:none ;"value="123"></form></td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
								
								<a title="删除">删除</a>
							</td>
						</tr>
					</tbody>
				</table>
				
			</div>
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

<div class="mask"></div>
<div class="dialog">
	<div class="dialog-hd">
		<strong class="lt-title">标题</strong>
		<a class="rt-operate icon-remove JclosePanel" title="关闭"></a>
	</div>
	<div class="dialog-bd">
		<!--start::-->
		<p>这里是基础弹窗,可以定义文本信息，HTML信息这里是基础弹窗,可以定义文本信息，HTML信息。</p>
		<!--end::-->
	</div>
	<div class="dialog-ft">
		<button class="btn btn-info JyesBtn">确认</button>
		<button class="btn btn-secondary JnoBtn">关闭</button>
	</div>
</div>
</body>
</html>
    