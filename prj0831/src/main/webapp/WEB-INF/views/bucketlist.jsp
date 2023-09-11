<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="prj0831.BucketList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>나의 버킷리스트</h2>
<% ArrayList<BucketList>list = (ArrayList<BucketList>) request.getAttribute("list");%>
<% for(BucketList b: list){
   out.println("리스트: "+b.getBlist()+ "  제한: "+b.getAge());
   %>
   <br>
<%   
   }  
%>

</body>
</html>
