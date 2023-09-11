<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="prj0831.Movie" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>영화정보</h2>
<% ArrayList<Movie> list = (ArrayList<Movie>)request.getAttribute("list"); %>
<%
   for(Movie m: list){
	   out.println("영화 제목: "+m.getTitle()+" 상영시간: "+ m.getMin()+"분");%>
	   <br>
<%   }

%>

</body>
</html>
