<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public static final String DRIVER="com.mysql.cj.jdbc.Driver";
public static final String URL="jdbc:mysql://localhost:3306/grocery";
public static final String USERNAME="root";
public static final String PASSWORD="9819375722Aditya";
public static final String INSERT_QUERY="insert into customer values(?,?,?,?,?)";
public static final String DISPLAY_QUERY="select * from Customer";
public void insert_user(int id,String name,int age,String contact,String nationality)
{
	try
	{
		Class.forName(DRIVER);
		Connection connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
		PreparedStatement statement = connection.prepareStatement(INSERT_QUERY);
		statement.setInt(1,id);
		statement.setString(2,name);
		statement.setInt(3,age);
		statement.setString(4,contact);
		statement.setString(5,nationality);
		statement.executeUpdate();
		statement.close();
		connection.close();
	}	
	catch(Exception e)
	{
		e.printStackTrace();
	}
}
%>
<%

int id=Integer.parseInt(request.getParameter("id"));
int age=Integer.parseInt(request.getParameter("age"));
String name=request.getParameter("name");
String contact=request.getParameter("contact");
String nationality=request.getParameter("nationality");
%>
id:<input type="text" name="id"><br>
name:<input type="text" name="name"><br>
age:<input type="text" name="age"><br>
contact:<input type="text" name="contact"><br>
nationality:<input type="text" name="nationality"><br>
</body>
</html>