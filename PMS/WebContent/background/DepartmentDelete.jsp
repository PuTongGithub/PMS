<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%

	String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");
	String sql = "update departments set mark='delete' where number = '" + number + "'";

	Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	int resultNum = statement.executeUpdate(sql); // 4 创建resultSet
	
	sql = "select * from departments where mark='using'";
	ResultSet resultSet = statement.executeQuery(sql);
	Vector department = new Vector();
	while (resultSet.next()) {
		Hashtable dep = new Hashtable();
		dep.put("name", resultSet.getString("name"));
		dep.put("number", resultSet.getString("number"));
		department.add(dep);
	}
	session.setAttribute("department", department);

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	
	out.println("<SCRIPT   LANGUAGE='JavaScript'>");
	if(resultNum > 0){
		out.println("alert('删除部门成功！');");
	}
	else{
		out.println("alert('删除部门失败！');");
	}
	out.println("parent.location.reload();");
	out.println("</SCRIPT>");
%>