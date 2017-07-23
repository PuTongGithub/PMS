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
    
    String sql = "update trial set notes="+"'"+check_resulte+"'"+" where number="+"'"+number+"'";

    Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	
    int resultNum = statement.executeUpdate(sql);
	
	if(check_resulte.equals("已录用")) check_resulte="正式员工";
    sql = "update employee set statu="+"'"+check_resulte+"'"+" where number="+"'"+number+"'";
    resultNum += statement.executeUpdate(sql);
    
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	out.println("<SCRIPT   LANGUAGE='JavaScript'>");
	if (resultNum > 1) {
		out.println("alert('更改试用期状态成功！');");
	} 
	else {
		out.println("alert('更改试用期状态失败！');");
	}
	out.println("parent.location.reload();");
	out.println("</SCRIPT>");
%>