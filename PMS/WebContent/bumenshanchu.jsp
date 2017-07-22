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
		<h1>&nbsp;&nbsp;部门删除</h1>
	</div>
	<form action="background/DepartmentDelete.jsp" method="post">
		<div
			style="margin-top: 30px; height: 60px; border-bottom: 1px solid black;">
			<div class="left" style="margin-left: 60px;">
				<p style="font-weight: 700">请输入要删除的部门编号：</p>
			</div>
			<div class="right" style="margin-right: 60px;">
				<input name="number" type="text" class="input3">
			</div>
		</div>

		<div class="box3 right">
			<button class="btn btn-info radius" type="submit">
				<i class="icon-olus"></i>确认删除
			</button>
		</div>
	</form>
</body>
</html>