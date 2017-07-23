<%@ page pageEncoding="utf-8"%>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%
	String username = new String(request.getParameter("username").getBytes("ISO-8859-1"),"utf-8"); //获得用户输入的用户名与密码
	String password = new String(request.getParameter("password").getBytes("ISO-8859-1"),"utf-8");
	System.out.println("用户名=" + username);
	System.out.println("密码=" + password);

	String sql = "select * from users where username='" + username
			+ "' and password='" + password + "'";
	System.out.println(sql);

	Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	ResultSet resultSet = statement.executeQuery(sql); // 4 创建resultSet

	boolean user_exist = false;
	while (resultSet.next()) {
		user_exist = true;
	}

	if (user_exist) {
		sql = "select * from departments where mark='using'";
		resultSet = statement.executeQuery(sql);
		Vector department = new Vector();
		while (resultSet.next()) {
			Hashtable dep = new Hashtable();
			dep.put("name", resultSet.getString("name"));
			System.out.println(resultSet.getString("name"));
			dep.put("number", resultSet.getString("number"));
			department.add(dep);
		}
		session.setAttribute("department", department);

		sql = "select * from positions where mark='using'";
		resultSet = statement.executeQuery(sql);
		Vector position = new Vector();
		while (resultSet.next()) {
			Hashtable pos = new Hashtable();
			pos.put("name", resultSet.getString("name"));
			System.out.println(resultSet.getString("name"));
			pos.put("number", resultSet.getString("number"));
			position.add(pos);
		}
		session.setAttribute("position", position);
	}

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection

	if (user_exist) { // 如果数据库中查询到姓名
		session.setAttribute("username", username); // 把用户名存到session中
		response.sendRedirect("../shouye.jsp"); // 跳转到主页面
	} else { // 如果没有查询到姓名
		out.println("<SCRIPT   LANGUAGE='JavaScript'>");
		out.println("alert('用户名或密码错误！');");
		out.println("location.href='../index.jsp';");
		out.println("</SCRIPT>");
	}
%>
