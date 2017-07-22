<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%
	String sql = "update departments mark='delete'";

	String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");
	if (!number.equals("")) {
		sql += " and number = '" + number + "'";
	}

	Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	ResultSet resultSet = statement.executeQuery(sql); // 4 创建resultSet


	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	
	out.println("<SCRIPT   LANGUAGE='JavaScript'>");
	out.println("alert('删除部门成功！');");
	out.println("location.href='../bumenguanli.jsp';");
	out.println("</SCRIPT>");
%>