<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "drink.DrinkService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>전체조회하기</h2>
<% 
   ArrayList<String> list = (ArrayList<String>)request.getAttribute("list");
   for(int i=0; i<list.size(); i++){
	   out.println(list.get(i) + "  ");
	   if(i%3==2){
		   out.println("<br>");
	   }
	   
   }
%>
</body>
</html>