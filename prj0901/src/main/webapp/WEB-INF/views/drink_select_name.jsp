<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="drink.Drink" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>검색한 결과</h2>
<%
   Drink d = (Drink)request.getAttribute("drink");%>
   아이디:<%= d.getId() %> <br>
   메뉴: <%= d.getName() %><br>
   가격: <%= d.getPrice() %> <br>

</body>
</html>