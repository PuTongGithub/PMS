<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<title>Insert title here</title>
</head>
<body>
<body>
	<div style="border-bottom: 1px solid black;">
		<h1>&nbsp;&nbsp;人员调离</h1>
	</div>
	<form action="background/JobResign.jsp" method="post">
		<div style="height: 40px; margin-top: 20px;">
			<div class="left" style="margin-left: 60px;">
				<p style="font-weight: 700">请输入员工编号：</p>
			</div>
			<div class="right " style="margin-right: 60px;">
				<input name="number" type="text" class="input3">
			</div>
		</div>
		<div style="height: 40px; margin-top: 20px;">
			<div class="left" style="margin-left: 60px;">
				<p style="font-weight: 700">请输入离职日期：</p>
			</div>
			<div class="right " style="margin-right: 60px;">
				<input name="resign_date" type="date" class="input3">
			</div>
		</div>

		<div
			style="margin-top: 30px; height: 40px; border-bottom: 1px solid black;">
			<div class="left" style="margin-left: 60px;">
				<p style="font-weight: 700">请选择离职类型：</p>
			</div>
			<div class="right" style="margin-right: 60px;">
				<select name="resign_type">
				<option>辞职</option>
				<option>辞退</option>
				<option>退休</option>
				</select>
			</div>
		</div>


		<div class="box3 right">
			<button class="btn btn-info radius" type="submit" id="tj">
				<i class="icon-olus"></i>确认离职
			</button>
		</div>

	</form>
	
	<script>
	
	$("#tj").click(function () {
		
		window.close();
		
		
	});

</script>

</body>
</html>