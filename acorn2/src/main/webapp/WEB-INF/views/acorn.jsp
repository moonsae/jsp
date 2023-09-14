<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="acorn2.Customer" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 80%;
}
</style>
</head>
<body>
<h2> 에이콘학생리스트</h2>
<% ArrayList<Customer> list = (ArrayList<Customer>)request.getAttribute("list");%>
<% for(int i=0; i<list.size(); i++){  %>
<table>
<tr>
<th>아이디</th>
<th>비밀번호</th>
<th>이름</th>
</tr>

<tr>
<td><%= list.get(i).getId() %></td>
<td><%= list.get(i).getPw() %></td>
<td><%= list.get(i).getName() %></td>
</tr>
<%} %>
</table>
</body>
</html>