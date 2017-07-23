<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%
	String sql = "select name, number, department, position, begin_date, resign_date, resign_type"
			+ " from resign where true";

	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
	if (!name.equals("")) {
		sql += " and name = '" + name + "'";
	}

	String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");
	if (!number.equals("")) {
		sql += " and number = '" + number + "'";
	}

	String department = new String(request.getParameter("department").getBytes("ISO-8859-1"),"utf-8");
	if(!department.equals("")){
		sql += " and department = '" + department + "'";
	}
	
	String position = new String(request.getParameter("position").getBytes("ISO-8859-1"),"utf-8");
	if(!position.equals("")){
		sql += " and position = '" + position + "'";
	}

	String begin_date = request.getParameter("begin_date");
	if (!begin_date.equals("")) {
		sql += " and resign_date >= '" + begin_date + "'";
	}

	String end_date = request.getParameter("end_date");
	if (!end_date.equals("")) {
		sql += " and resign_date <= '" + end_date + "'";
	}
	
	String type = request.getParameter("type");
	if (!end_date.equals("")) {
		sql += " resign_type = '" + type + "'";
	}
	
	out.println(sql);

 	Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	ResultSet resultSet = statement.executeQuery(sql); // 4 创建resultSet

	Vector trial = new Vector();
	while (resultSet.next()) {
		Hashtable tr = new Hashtable();
		tr.put("name", resultSet.getString("name"));
		//out.println(tr.get("name"));
		tr.put("number", resultSet.getString("number"));
		tr.put("begin_date", resultSet.getString("begin_date"));
		tr.put("resign_date", resultSet.getString("resign_date"));
		tr.put("type", resultSet.getString("resign_type"));
		tr.put("department", resultSet.getString("department"));
		tr.put("position", resultSet.getString("position"));
		trial.add(tr);
	}
	request.setAttribute("trial", trial);

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	
	request.getRequestDispatcher("lizhi.jsp").forward(request, response);
	//response.sendRedirect("../shiyongqi.jsp"); // 跳转到试用期管理页面 
%>