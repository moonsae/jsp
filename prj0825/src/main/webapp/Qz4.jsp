<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="prj0825.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Book book = new Book("재미있는 서블릿","lee",25000);
out.print(book.toString());
%>
</body>
</html>