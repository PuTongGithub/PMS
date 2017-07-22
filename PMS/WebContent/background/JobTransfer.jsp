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
    String transfer_date = new String(request.getParameter("transfer_date").getBytes("ISO-8859-1"),"utf-8");
    String current_department = new String(request.getParameter("department").getBytes("ISO-8859-1"),"utf-8");
    String current_position = new String(request.getParameter("position").getBytes("ISO-8859-1"),"utf-8");
      
    Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
	Statement statement = connection.createStatement(); // 3 创建statement
	
	String sql;
	ResultSet resultSet;
	
	sql = "select name,department,position from employee where number ="+"'"+number+"'";
	resultSet = statement.executeQuery(sql);
	
	String name = resultSet.getString("name");
	String formal_deparment = resultSet.getString("department");
	String formal_position = resultSet.getString("position");
	
	sql = "insert into transfer (name,number,transfer_date,formal_department,formal_position,current_department,current_position)"+
			     " values "+
			     "('"+name+"',"+
                 "'"+number+"',"+
                 "'"+transfer_date+"',"+
                 "'"+formal_department+"',"+
                 "'"+formal_position+"',"+
                 "'"+current_department+"',"+
                 "'"+current_position+"')";
	resultSet = statement.executeUpdate(sql);
	
	sql = "update employee set department="+"'"+current_department+"'"+",position="+"'"+current_position+"'"+" where number="+"'"+number+"'";
	resultSet = statement.executeUpdate(sql);

	resultSet.close(); // 关闭resultSet
	statement.close(); // 关闭statement
	connection.close(); // 关闭connection 
	
	out.println("<SCRIPT   LANGUAGE='JavaScript'>");
	out.println("alert('调动成功！');");
	out.println("location.href='../diaodong.jsp';");
	out.println("</SCRIPT>");
%>