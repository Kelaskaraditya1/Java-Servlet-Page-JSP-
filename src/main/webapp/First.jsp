<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
num1:<input type="text" name="num1"><br>
num2:<input type="text" name="num2"><br>
<input type="submit" value="submit">
</form>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2=Integer.parseInt(request.getParameter("num2"));
out.println(num1+num2);
%>
</body>
</html>