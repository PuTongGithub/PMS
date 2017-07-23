<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%

    String department = new String(request.getParameter("department").getBytes("ISO-8859-1"),"utf-8");
    String begin_date = new String(request.getParameter("begin_date").getBytes("ISO-8859-1"),"utf-8");
    String end_date = new String(request.getParameter("end_date").getBytes("ISO-8859-1"),"utf-8");

	String sql = "select employee.number,employee.name,employee.sex,employee.department,employee.position,resign.resign_date,resign.resign_type"+
	             " from employee,resign"+
	             " where employee.number = people.number and employee.department='"+department+"' and resign.resign_date between '"+begin_date+"' and '"+end_date+"'";

	Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	ResultSet resultSet = statement.executeQuery(sql); // 4 创建resultSet
	
	Vector resign = new Vector();
	while (resultSet.next()) {
		Hashtable tr = new Hashtable();
		tr.put("number", resultSet.getString("employee.number"));
		tr.put("name", resultSet.getString("employee.name"));
		tr.put("sex", resultSet.getString("employee.sex"));
		tr.put("department", resultSet.getString("employee.department"));
		tr.put("position", resultSet.getString("employee.position"));
		tr.put("resign_date", resultSet.getString("resign.resign_date"));
		tr.put("resign_type", resultSet.getString("resign.resign_type"));
		trial.add(tr);
	}
	request.setAttribute("resign", resign);

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	response.sendRedirect("../lizhibaobiao.jsp"); // 跳转到试用期管理页面
%>