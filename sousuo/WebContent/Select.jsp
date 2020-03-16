<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<br>查询到的答案
</body>
</html>
 <% 
    request.setCharacterEncoding("gb2312");
    String shuru=request.getParameter("shuru");
    
    String userName="root"; 
//密码 
String userPasswd="990322"; 
//数据库名 
String dbName="dananku"; 
//表名 
String tableName="s"; 
String url="jdbc:mysql://localhost:3306/xsk?characterEncoding=gb2312";
Connection conn=null;
try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(url,userName,userPasswd);
System.out.println("连接success");}
catch(Exception r){ out.println("1223"); }
     Statement stmt2=conn.createStatement();
	System.out.println("数据库创建对象成功");
	try{
	String sqlstr2="select * from s where shuru='"+shuru+"'"; 
	ResultSet rs=stmt2.executeQuery(sqlstr2);
	while(rs.next()){
		out.print("<br>题目:"+rs.getString("shuru")+"<br>答案内容:"
		+rs.getString("daan"));}}
	catch(Exception a){
		out.print("</table><hr>");
	}
%>