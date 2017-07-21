<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%
String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");

String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8"); //获取用户表相关
String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");;
String number = new String(request.getParameter("number").getBytes("ISO-8859-1"),"utf-8");;
String birthday = new String(request.getParameter("birthday").getBytes("ISO-8859-1"),"utf-8");;
String id_number = new String(request.getParameter("id_number").getBytes("ISO-8859-1"),"utf-8");;
String department = new String(request.getParameter("department").getBytes("ISO-8859-1"),"utf-8");;
String postion = new String(request.getParameter("postion").getBytes("ISO-8859-1"),"utf-8");;
String entry_date = new String(request.getParameter("entry_date").getBytes("ISO-8859-1"),"utf-8");;
String work_date = new String(request.getParameter("work_date").getBytes("ISO-8859-1"),"utf-8");;
String employment_form = new String(request.getParameter("employment_form").getBytes("ISO-8859-1"),"utf-8");;
String personnel_source = new String(request.getParameter("personnel_source").getBytes("ISO-8859-1"),"utf-8");;
String statu;

String phone_number = new String(request.getParameter("phone_number").getBytes("ISO-8859-1"),"utf-8");; //获取人员表相关
String email = new String(request.getParameter("email").getBytes("ISO-8859-1"),"utf-8");;
String address = new String(request.getParameter("address").getBytes("ISO-8859-1"),"utf-8");;
String marriage = new String(request.getParameter("marriage").getBytes("ISO-8859-1"),"utf-8");;
String politcal = new String(request.getParameter("politcal").getBytes("ISO-8859-1"),"utf-8");;
String education = new String(request.getParameter("education").getBytes("ISO-8859-1"),"utf-8");;
String school = new String(request.getParameter("school").getBytes("ISO-8859-1"),"utf-8");;
String notes = new String(request.getParameter("notes").getBytes("ISO-8859-1"),"utf-8");;
String major = new String(request.getParameter("major").getBytes("ISO-8859-1"),"utf-8");;
String graduate_date = new String(request.getParameter("graduate_date").getBytes("ISO-8859-1"),"utf-8");;
String folk = new String(request.getParameter("folk").getBytes("ISO-8859-1"),"utf-8");;

String begin_date = new String(request.getParameter("begin_date").getBytes("ISO-8859-1"),"utf-8");; //获取实习表相关
String end_date;
String duration = new String(request.getParameter("duration").getBytes("ISO-8859-1"),"utf-8");;
String mark = new String(request.getParameter("mark").getBytes("ISO-8859-1"),"utf-8");;
String notes = new String(request.getParameter("notes").getBytes("ISO-8859-1"),"utf-8");;

String begin_date = request.getParameter("test"); //statu,end_date处理
char[] b = begin_date.toCharArray();
int d = 0;
if(duration.equals("无")) statu = "正式员工";
else {
	statu = "实习期";
	if(duration.equals("三个月")) d = 3;
	else d = 6;
}
int m = 10*(b[5]-'0')+b[6]-'0'+d;
int y = 1000*(b[0]-'0')+100*(b[1]-'0')+10*(b[2]-'0')+(b[3]-'0');
y = y + m/12;
m = m%12;
if(m>9) end_date = ""+y+'-'+m+'-'+b[8]+b[9];
else end_date = ""+y+'-'+'0'+m+'-'+b[8]+b[9]; //end_date                                                       
	
Class.forName("com.mysql.jdbc.Driver"); // 1 加载驱动
Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pms_database", "root", "root"); // 2 创建connection
Statement statement = connection.createStatement(); // 3 创建statement

String sql = "insert into employee (name,sex,number,birthday,id_number,department,postion,entry_date,work_date,employment_form,personnel_source,statu)"+
                                    "values"+
                                    "('"+name+"',"+
                                    "'"+sex+"',"+
                                    "'"+number+"',"+
                                    "'"birthday+"',"+
                                    "'"id_number+"',"+
                                    "'"+department+"',"+
                                    "'"+postion+"',"+
                                    "'"+entry_date+"',"+
                                    "'"+work_date+"',"+
                                    "'"+employment_form+"',"+
                                    "'"+personnel_source+"',"+
                                    "'"+statu+"')"; //插入员工表
statement.executeQuery(sql);
                             		
String sql = "insert into people (name,number,phone_number,email,address,marriage,politcal,education,school,notes,major,graduate_date,folk)"+
		                            "values"+
		                            "('"+name+"',"+
		                            "'"+number+"',"+
		                            "'"+phone_number+"',"+
		                            "'"+email+"',"+
		                            "'"+address+"',"+
		                            "'"+marriage+"',"+
		                            "'"+politcal+"',"+
		                            "'"+education+"',"+
		                            "'"+school+"',"+
		                            "'"+notes+"',"+
		                            "'"+major+"',"+
		                            "'"+graduate_date+"',"+
		                            "'"+folk+"')"; //插入人员表
statement.executeQuery(sql);                                 

if(d!=0){
String sql = "insert into trial (name,number,begin_date,end_date,duration,mark,notes)"+
                                    "values"+
                                    "('"+name+"',"+
                                    "'"+number+"',"+
                                    "'"+begin_date+"',"+
         		                    "'"+end_date+"',"+
         		                    "'"+duration+"',"+
         		                    "'"+mark+"',"+
         		                    "'"+notes+"')"; //插入实习表
statement.executeQuery(sql);
}

resultSet.close(); // 关闭resultSet
statement.close(); // 关闭statement
connection.close(); // 关闭connection

out.println("<SCRIPT   LANGUAGE='JavaScript'>");
out.println("alert('信息已录入！');");
out.println("location.href='../ruzhi.jsp';");
out.println("</SCRIPT>");

%>
