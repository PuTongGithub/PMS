<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.Vector" %>
<%@ page import="java.util.Hashtable" %>

<%
	Vector yglb = (Vector)request.getAttribute("department");
	Vector yglb2 = (Vector)request.getAttribute("position"); // 员工列表
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>入职管理</title>
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
						<li><a href="#">人员管理</a><i class="icon-angle-right"></i></li>
						<li><a href="#">入职管理</a><!-- <i class="icon-angle-right"></i> --></li>
					</ul>	
				</div>

		<form>		
			<!-- 1.0 -->
		<div style=" margin:20px 0px 0px 0px;">
			<div style=" margin:10px 0px 0px 0px; width:100%;height:100% border-top:1px solid black;">
					
					<header>
						<p>&nbsp;&nbsp;&nbsp;*必填信息</p>
					</header>>
					<!-- 1.1 -->
					<div class="form-group-col-2" style=" float:left; margin:0px 0px 0px 0px;">
							<!-- 员工姓名 -->
								
							<div class="form-group-col-2" style="margin:20px 0px 0px 20px;">
								<div class="form-label">*员工ID：</div>
								<div class="form-cont">
									<input type="text" class="form-control form-boxed" style="width:auto;">
								</div>
							</div>

							<div class="form-group-col-2" style="margin:10px 0px 0px 20px;">
								<div class="form-label">*员工姓名：</div>
								<div class="form-cont">
									<input type="text" class="form-control form-boxed" style="width:auto;">
								</div>
							</div>
							
							<!-- 员工编号 -->
							<div class="form-group-col-2" style="margin:10px 0px 0px 20px;">
								<div class="form-label">*员工标号：</div>
								<div class="form-cont">
									<input type="text" class="form-control form-boxed" style="width:auto;">
								</div>
							</div>
							
							<!-- 性别 -->
							<div class="form-group-col-2" style="margin:10px 0px 0px 20px;">
								<div class="form-label">*性别:</div>
								<div class="form-cont">
									<select style="width:auto;">
										<option>请选择</option>
										<option>男</option>
										<option>女</option>
									</select>
								</div>	
							</div>

					</div>

					<!-- 1.2 -->
					<div class="page-wrap" style="float:left; margin:0px 0px 0px 30px;">	
						
					<!-- 身份证件 -->
							<div class="form-group-col-2" style="margin:0px 0px 10px 0px;">
								<div class="form-label">*身份证件：</div>
								<div class="form-cont">
									<input type="text" class="form-control form-boxed" style="width:185px;">
								</div>		
							</div>

							<div class="form-group-col-2" style="margin:10px 0px 10px 0px;">
								<div class="form-label">*出生日期：</div>
								<div class="form-cont">
									<input type="date" class="form-control form-boxed" style="width:auto;">
									<!-- <p>示例：2016/04/07</p> -->
								</div>
							</div>	

							<div class="form-group-col-2" style="margin:10px 0px 10px 0px;">
								<div class="form-label">*工作时间：</div>
								<div class="form-cont">
									<input type="date" placeholder="" class="form-control form-boxed" style="width:auto;">			
										<!-- <p>示例：2016/04/07</p> -->
								</div>
							</div>

							<div class="form-group-col-2" style="margin:10px 0px 10px 0px;">
								<div class="form-label">*入职时间：</div>
								<div class="form-cont">
									<input type="date" placeholder="" class="form-control form-boxed" style="width:auto;">
								</div>
							</div> 

					</div>
		
					<!-- 1.3 -->		
					<div class="page-wrap" style="float:left; width:35%; height:100%; margin:0px 0px 0px 15px;">

							<div class="form-group-col-2" style="margin:0px 0px 0px 0px;">
								<div class="form-label">*部门:</div>
								<div class="form-cont">
									<select style="width:auto;">
										<option>请选择</option>
										<option>技术部</option>
										<option>销售部</option>
										<option>后勤部</option>
										<option>人事部</option>
									</select>
								</div>	
							</div>

							<div class="form-group-col-2" style="margin:10px 0px 10px 0px;">
								<div class="form-label">*实习期:</div>
								<div class="form-cont">
									<select style="width:auto;">
										<option>请选择</option>
										<option>无</option>
										<option>3个月</option>
										<option>6个月</option>
									</select>
								</div>	
							</div>

							<div class="form-group-col-2" style="margin:10px 0px 10px 0px;">									
								<div class="form-label">*人员来源:</div>
								<div class="form-cont">
									<select style="width:auto;">
										<option>请选择</option>
										<option>内部提升</option>
										<option>外部招聘</option>
									</select>
								</div>	
							</div>

							<div class="form-group-col-2" style="margin:10px 0px 10px 0px;">
								<div class="form-label">*用工形式:</div>
								<div class="form-cont">
										<!-- <input type="text" class="form-control form-boxed" style="width:100%;" placeholder="请输入..." /> -->
									<select style="width:auto;">
										<option>请选择</option>
										<option>全日制用工</option>	
										<option>劳务派遣工</option>
										<option>非全日制用工</option>
									</select>
								</div>	
							</div>

					</div>			
							
			</div>	

			<!-- 2.0 -->						
			<div class="page-wrap" style="position:absolute;top:285px;left:0px; border-top:1px solid black; width:100%;height:100%">	
					<header>
						<p>*选填信息</p>
					</header>
					<br>
					
					<!-- 2.1 -->
					<div class="form-group-col-2" style="float:left; margin:0px 0px 0px 0px">	
									
							<div class="form-group-col-2" style="margin:0px 10px 10px 0px; width:auto;">
										<div class="form-label">联系方式：</div>
										<div class="form-connt">
										<input type="text" class="form-control form-boxed" style="width:180px;">		
										</div>
							</div>			

							<div class="form-group-col-2" style="margin:0px 10px 10px 0px; width:auto;">
									<div class="form-label">电子邮件：</div>
									<div class="form-cont">
										<input type="text" class="form-control form-boxed" style="width:180px;" /> 
									</div>	
							</div>

							<div class="form-group-col-2" style="margin:0px 10px 10px 0px; width:auto;">
										<div class="form-label">住址：</div>
										<div class="form-connt">
										<input type="text" class="form-control form-boxed" style="width:180px;">		
										</div>
							</div>		

							<div class="form-group-col-2" style="margin:0px 10px 10px 0px; width:auto;">
										<div class="form-label">政治面貌：</div>
										<div class="form-connt">
										<input type="text" class="form-control form-boxed" style="width:180px;">		
										</div>
							</div>

					</div>	

					<!-- 2.2 -->
					<div class="form-group-col-2" style="float:left; width:30%; height:100%; margin:0px 0px 0px 0px;">

							<div class="form-group-col-2" style="margin:0px 0px 0px 42px; width:auto;">
										<div class="form-label">学历：</div>
										<div class="form-connt">
											<input type="text" class="form-control form-boxed" style="width:140px;">		
										</div>
							</div>					
							
							<div class="form-group-col-2" style="margin:10px 0px 0px 45px; width:auto;">
										<div class="form-label">毕业时间：</div>
										<div class="form-connt">
											<input type="date" class="form-control form-boxed" style="width:140px;">		
										</div>
							</div>		

							<div class="form-group-col-2" style="margin:10px 30px 0px 45px; width:180px;">
										<div class="form-label">专业：</div>
										<div class="form-cont">
											<input type="text" placeholder="" class="form-control form-boxed" style="width:140px;">	
										</div>
							</div>	

							<div class="form-group-col-2" style="margin:10px 0px 0px 45px; width:auto;">
										<div class="form-label">毕业院校：</div>
										<div class="form-connt">
											<input type="text" class="form-control form-boxed" style="width:140px;">		
										</div>
							</div>					

							

					</div>	
					<!--2.3-->
					<div class="form-group-col-2" style="float:left; width:30%; height:100%;">

						<div class="form-group-col-2" style="margin:0px 30px 0px 45px; width:auto;">
									<div class="form-label">婚姻:</div>
									<div class="form-cont">
										<select style="width:auto;">
											<option>请选择</option>
											<option>已婚</option>	
											<option>未婚</option>
											<option>离异</option>
										</select>
									</div>	
							</div>




						<div class="form-group-col-2" style="margin:10px 30px 0px 45px; width:auto;">
										<div class="form-label">备注：</div>
										<div class="form-cont">
											<input type="text" class="form-control form-boxed" style="width:180px;">	
										</div>
						</div>	

						<div class="form-group-col-2" style="margin:10px 30px 0px 45px; width:auto;">
										<div class="form-label">民族：</div>
										<div class="form-cont">
											<input type="text" placeholder="" class="form-control form-boxed" style="width:180px;">	
										</div>
						</div>	

					</div>	
			</div>
			<!-- 3.0 -->
			<div class="page-wrap" style="position:absolute;top:545px;left:0px; border-top:1px solid black; width:100%;height:100%">
				<div>
				<input type="submit" class="btn radius" style="position:absolute;top:20px;left:510px; background:#46a546; color:white;" name="提交 " />
				</div>
			</div>

		</div>	

		</form>
			

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
    