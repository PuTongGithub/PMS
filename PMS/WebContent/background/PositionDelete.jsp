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
	String sql = "update positions set mark='delete' where number = '" + number + "'";

	Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	statement.executeUpdate(sql);
	
	sql = "select * from positions where mark='using'";
	ResultSet resultSet = statement.executeQuery(sql); 
	Vector position = new Vector();
	while (resultSet.next()) {
		Hashtable pos = new Hashtable();
		pos.put("name", resultSet.getString("name"));
		pos.put("number", resultSet.getString("number"));
		position.add(pos);
	}
	session.setAttribute("position", position);

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	
	out.println("<SCRIPT   LANGUAGE='JavaScript'>");
	out.println("alert('删除岗位成功！');");
	out.println("parent.location.reload();");
	out.println("</SCRIPT>");
%>