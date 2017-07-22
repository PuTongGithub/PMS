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
    String check_resulte = new String(request.getParameter("check_resulte").getBytes("ISO-8859-1"),"utf-8");

    Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	
    String sql = "update trial notes="+"'"+check_resulte+"'"+" where number="+"'"+number+"'";
    ResultSet resultSet = statement.executeQuery(sql);
	
	if(check_resulte.equals("通过")) check_resulte="正式员工";
    sql = "update employee statu="+"'"+check_resulte+"'"+" where number="+"'"+number+"'";
    resultSet = statement.executeQuery(sql);
    

    
	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	response.sendRedirect("../bumenguanli.jsp"); // 跳转到管理页面 
%>