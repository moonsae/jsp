<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="prj0825.MyUtils" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

MyUtils u = new MyUtils();
String result =u.getDivisor(12);
out.println(result);
String result2 = u.getMessage();
out.println(result2);
%>

</body>
</html>