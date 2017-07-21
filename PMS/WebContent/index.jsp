<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录界面</title>
<!-- css -->


<link rel="stylesheet" href="css/login/24124.css">
<link rel="stylesheet" href="css/login/supersized.css">
</head>
<body>

<div class="b2">
<h1>人事管理系统</h1>
<form action="background/LoginProcessing.jsp" id="login_form">
<div class="b1">
用户名&nbsp;<input type="text" class="user" placeholder="用户名" id="username" name="username">
</div>
<div class="b1">
密码	&nbsp;&nbsp;&nbsp;<input type="password" placeholder="密码"class="pass" id="password" name="password">
</div>
</form>
<div class=box2>
<button type="submit"  id="bt1">登陆</button>
<span class="glyphicon glyphicon-search"></span>
</div>
</div>
	
	
	<script src="js/login/jquery.min.js"></script>
	<script src="js/login/supersized.3.2.7.min.js"></script>
	
	<script src="js/login/supersized-init.js"></script>
	<script>
	
	$("#bt1").click(function () {
		
		var username = $("#user").val();
		var pass = $("#pass").val();
		console.log(username);
		if(username==""||pass==""){
			alert("用户名或者密码不能为空");
			return false;
		}
		login_form.submit();
	});

</script>
</body>
</html>