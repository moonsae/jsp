<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 인사말!!!</h2>
<% String result = (String)request.getAttribute("msg");
   out.println(result);
%>

<%=result %>
</body>
</html>