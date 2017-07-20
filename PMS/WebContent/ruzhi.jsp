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
							<a href="shiyongqi.jsp">试用期管理</a>
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
						<li><a href="#" style="color:blue;">入职管理</a></li>
					</ul>	
				</div>
			<div>
				<div class="page-wrap">
					<!--开始::内容-->
					<section class="page-hd">
						<header>
							<h2 class="title">入职管理</h2>
							<p class="title-description">
								请输入个人信息
							</p>
						</header>
						<hr>
					</section>
				</div>	
				<form action="">	
				<div class="form-group-col-2" style="float:left;">
					<!-- 员工姓名 -->
					<br>	
					<div class="form-group-col-2">
						<div class="form-label">*员工姓名：</div>
						<div class="form-cont">
							<input type="text" class="form-control form-boxed" style="">
						</div>
					</div>
					<!-- 性别 -->
					<div class="form-group-col-2">
						<div class="form-label">*性别：</div>
						<div class="form-cont">
							<label class="radio">
								<input type="radio" name="sex" checked="checked"/>
								<span>男士</span>
							</label>
							<label class="radio">
								<input type="radio" name="sex" />
								<span>女士</span>
						</div>
					</div>
					<!-- 员工编号 -->
					<div class="form-group-col-2">
						<div class="form-label">*员工编号：</div>
						<div class="form-cont">
							<input type="text" class="form-control form-boxed" style="">
						</div>
					</div>
					<!-- 身份证件 -->
					<div class="form-group-col-2">
						<div class="form-label">*身份证件：</div>
						<div class="form-cont">
							<input type="text" class="form-control form-boxed" style="width:100%;">
						</div>		
					</div>
					<!-- 出生日期 -->
					<div class="form-group-col-2">
						<div class="form-label">*出生日期：</div>
						<div class="form-cont">
							<input type="date" placeholder="" class="form-control form-boxed" style="width:100%;">
							<!-- <p>示例：2016/04/07</p> -->
						</div>
					</div>	

				</div>

				<div class="page-wrap" style="float:left; margin-left:100px;">
						<!--开始::结束-->
						<div class="form-group-col-2">
							<div class="form-label">*入职日期：</div>
							<div class="form-cont">
								<input type="date" placeholder="" class="form-control form-boxed" style="width:100%;">
								<!-- <p>示例：2016/04/07</p> -->
							</div>
						</div> 

						<div class="form-group-col-2" style="margin-top: 20px;">
							<div class="form-label">*工作日期：</div>
							<div class="form-cont">
								<input type="date" placeholder="" class="form-control form-boxed" style="width:100%;">						
								<!-- <p>示例：2016/04/07</p> -->
							</div>
						</div>
						
								<!-- 部门 -->
						<div class="form-group-col-2" style="margin-top: 20px;">
							<div class="form-label">*部门:</div>
							<div class="form-cont">
								<select style="width:auto;"请选择 placeholder="">
									<option>请选择</option>
									<option>技术部</option>
									<option>销售部</option>
									<option>后勤部</option>
									<option>人事部</option>
								</select>
							</div>	
						</div>

						<div class="form-group-col-2" style="margin-top: 20px;">
							<div class="form-label">*用工形式:</div>
							<div class="form-cont">
								<select style="width:auto;"placeholder="">
									<option>请选择</option>
									<option>临时员工</option>
									<option>正式员工</option>
								</select>
							</div>	
						</div>
					
						<div class="form-group-col-2" style="margin-top: 20px;">
							<div class="form-label">*人员来源:</div>
							<div class="form-cont">
								<select style="width:auto;"placeholder="">
									<option>请选择</option>
									<option>员工举荐</option>
									<option>社会招聘</option>
									<option>校园招聘</option>
								</select>
							</div>	
						</div>
					</form>
				</div>
				
				
			
			</div>
			
				<div style="width: 100px;height: 50px; position: absolute; top:500px; left:30%;">
					<input type="submit" class="btn btn-primary" value="提交" style="display: block;"/>
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
    