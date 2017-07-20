<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body  style="margin: 50px">
<table class="table table-hover">
<th>
<tr>
<td>编号</td>
<td>姓名</td>
<td>性别</td>
<td>年龄</td>
</tr>
</th>
<tbody>
<tr>
<td>1</td>
<td>张三</td>
<td>男</td>
<td>25</td>
</tr>
<tr class="danger">
<td>2</td>
<td>李四</td>
<td>男</td>
<td>25</td>
<tr class="success">
<td>3</td>
<td>王五</td>
<td>男</td>
<td>25</td>
</tr>
</tr>
</tbody>
</table>
<button class="btn btn-success btn-sm">button</button>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.js"></script>
<div class="input-group">

<input type="text" class="form-control">
<span class="input-group-addon">@163.com</span>
</div>
<ul class="nav nav-pills">
<li class="active"><a href="">首页</a></li>
<li><a href="">咨询</a></li>
<li><a href="">产品</a></li>
<li><a href="">关于</a></li>
</ul>
<ul class="nav nav-tabs nav-justified">
<li class="active"><a href="">首页</a></li>
<li><a href="">咨询</a></li>
<li><a href="">产品</a></li>
<li><a href="">关于</a></li>
</ul>

<nav class="navbar navbar-default">
<div class="container">
<div class="nav navbar-header">
<a href="#" class="navbar-brand">标题</a>
</div>
<ul class="nav navbar-nav">
<li class="active"><a href="">首页</a></li>
<li><a href="">咨询</a></li>
<li class="disabled"><a href="">产品</a></li>
<li><a href="">关于</a></li>
</ul>

<form action="index.jsp" class="navbar-form navbar-right">
<div class="input-group">
<input type="text" class="form-control">
<div class="input-group-btn">
<button class="btn btn-default">提交</button>
</div>
</div>
</form>

<button class="btn btn-default navbar-btn navbar">按钮</button>
<p class="navbar-text">王者荣耀今天出新英雄啦皮皮猪</p>
</div>
</nav>
<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-search"></span> Search
        </button>
        <p>Search icon: <span class="icon-search"></span></p>    
</body>

</html>