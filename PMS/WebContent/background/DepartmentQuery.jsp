<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%
	String sql = "select name,number from departments where mark != 'delete'";

	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
	if (!name.equals("")) {
		sql += " and name = '" + name + "'";
	}

	String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");
	if (!number.equals("")) {
		sql += " and number = '" + number + "'";
	}

	Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	ResultSet resultSet = statement.executeQuery(sql); // 4 创建resultSet

	Vector department = new Vector();
	while (resultSet.next()) {
		Hashtable tr = new Hashtable();
		tr.put("name", resultSet.getString("name"));
		//out.println(tr.get("name"));
		tr.put("number", resultSet.getString("number"));
	
		department.add(tr);
	}
	request.setAttribute("department", department);

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	response.sendRedirect("../bumenguanli.jsp"); // 跳转到管理页面 
%>