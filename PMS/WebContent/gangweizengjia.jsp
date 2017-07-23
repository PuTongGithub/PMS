<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@ page import="java.util.Vector" %>
<%@ page import="java.util.Hashtable" %>

<%
	Vector yglb = (Vector)session.getAttribute("department");
	Vector yglb2 = (Vector)session.getAttribute("position"); 
	String username=(String)session.getAttribute("username");// 员工列表
%>
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
		<h1>&nbsp;&nbsp;岗位增加</h1>
	</div>
	<form action="background/PositionAdd.jsp">

		<div style="margin-top: 30px; height: 40px;">
			<div class="left" style="margin-left: 60px;">
				<p style="font-weight: 700">请输入新增岗位编号：</p>
			</div>
			<div class="right" style="margin-right: 60px;">
				<input name="number" type="text" class="input3">
			</div>
		</div>

		<div style="margin-top: 30px; height: 60px;">
			<div class="left" style="margin-left: 60px;">
				<p style="font-weight: 700">请输入新增岗位名称：</p>
			</div>
			<div class="right" style="margin-right: 60px;">
				<input name="name" type="text" class="input3">
			</div>
		</div>
		<div
			style="margin-top: 30px; height: 60px; border-bottom: 1px solid black;">
			<div class="left" style="margin-left: 60px;">
				<p style="font-weight: 700">请输入岗位所属部门：</p>
			</div>
			<div class="right" style="margin-right: 60px;">
				<select name="department" style="width:130px;">
									
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
		</div>

		<div class="box3 right" type="submit">
			<button class="btn btn-info radius">
				<i class="icon-olus"></i>确认增加
			</button>
		</div>
	</form>

</body>
</html>