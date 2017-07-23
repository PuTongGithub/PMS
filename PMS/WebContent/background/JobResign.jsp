<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Vector"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%
    String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");
    String resign_date = new String(request.getParameter("resign_date").getBytes("ISO-8859-1"),"utf-8");
    String resign_type = new String(request.getParameter("resign_type").getBytes("ISO-8859-1"),"utf-8");
    
    Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	
	String sql;
	ResultSet resultSet;
	
	sql = "select name,entry_date,department,position from employee where number = '"+number+"'";
	resultSet = statement.executeQuery(sql);
	
	boolean employee_exist=false;
	if(resultSet.next()){
		employee_exist = true;
		String name = resultSet.getString("name");
		String entry_date = resultSet.getString("entry_date");
		String department = resultSet.getString("department");
		String position = resultSet.getString("position");
		
		
		sql = "insert into resign (name,number,begin_date,resign_date,department,position,resign_type)"+
				     " values "+
				     "('"+name+"',"+
	                 "'"+number+"',"+
	                 "'"+entry_date+"',"+
	                 "'"+resign_date+"',"+
	                 "'"+department+"',"+
	                 "'"+position+"',"+
	                 "'"+resign_type+"')";
		statement.executeUpdate(sql);
		
		sql = "update employee set statu='离职' where number="+"'"+number+"'";
		statement.executeUpdate(sql);
	}

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	
	out.println("<SCRIPT   LANGUAGE='JavaScript'>");
	if(employee_exist){
		out.println("alert('离职操作成功！');");
	}
	else{
		out.println("alert('离职操作失败！');");
	}
	out.println("parent.location.reload();");
	out.println("</SCRIPT>");
%>