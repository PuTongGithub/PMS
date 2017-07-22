<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%
	String sql = "select trial.name, trial.number, department, position, begin_date, end_date, duration, notes "
			+ "from trial natural join employee where mark != 'delete'";

	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
	if (!name.equals("")) {
		sql += " and trial.name = '" + name + "'";
	}

	String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");
	if (!number.equals("")) {
		sql += " and trial.number = '" + number + "'";
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
		sql += " and begin_date >= '" + begin_date + "'";
	}

	String end_date = request.getParameter("end_date");
	if (!end_date.equals("")) {
		sql += " and end_date <= '" + end_date + "'";
	}
	
	String notes = new String(request.getParameter("notes").getBytes("ISO-8859-1"),"utf-8");
	if (!notes.equals("")) {
		sql += " and notes = '" + notes + "'";
	}
	//out.println(sql);

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
		tr.put("end_date", resultSet.getString("end_date"));
		tr.put("duration", resultSet.getString("duration"));
		notes = resultSet.getString("notes");
		if (notes == null) {
			tr.put("notes", "");
		} else {
			tr.put("notes", notes);
		}
		trial.add(tr);
	}
	request.setAttribute("trial", trial);

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	response.sendRedirect("../shiyongqi.jsp"); // 跳转到试用期管理页面
%>