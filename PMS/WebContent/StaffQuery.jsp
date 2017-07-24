<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%
	String sql = "select employee.name,employee.number,employee.sex,employee.department,employee.position,people.phone_number"+
                 " from employee,people"+
	             " where employee.number=people.number";

	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
	if (!name.equals("")) {
		sql += " and employee.name = '" + name + "'";
	}

	String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");
	if (!number.equals("")) {
		sql += " and employee.number = '" + number + "'";
	}
	
	String department = new String(request.getParameter("department").getBytes("ISO-8859-1"),"utf-8");
	if (!department.equals("")) {
		sql += " and employee.department = '" + department + "'";
	}
	
	String position = new String(request.getParameter("position").getBytes("ISO-8859-1"),"utf-8");
	if (!position.equals("")) {
		sql += " and employee.position = '" + position + "'";
	}

	Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	ResultSet resultSet = statement.executeQuery(sql); // 4 创建resultSet

	Vector staff = new Vector();
	while (resultSet.next()) {
		Hashtable tr = new Hashtable();
		tr.put("name", resultSet.getString("employee.name"));
		tr.put("number", resultSet.getString("employee.number"));
		tr.put("sex", resultSet.getString("employee.sex"));
		tr.put("department", resultSet.getString("employee.department"));
		tr.put("position", resultSet.getString("employee.position"));
		tr.put("phone_number", resultSet.getString("people.phone_number"));
	
		staff.add(tr);
	}
	request.setAttribute("staff", staff);

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	
	request.getRequestDispatcher("yuangongxinxi.jsp").forward(request, response);
%>