<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사칙연산</h2>
<%
int su1 = Integer.parseInt(request.getParameter("su1"));
int su2 = Integer.parseInt(request.getParameter("su2"));
String a = request.getParameter("a");
int result;
if(a.equals("+")) result = su1 + su2;
else if(a.equals("-")) result = su1 - su2;
else if(a.equals("*")) result = su1 * su2;
else result = su1/su2;
out.println(result);
%>
</body>
</html>
