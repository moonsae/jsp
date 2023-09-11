<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String qzid = (String) session.getAttribute("qzid");

 
%>
<c:if test="${empty qzid}">
    ${qzid}
    <div>로그인</div>
</c:if>
<c:if test="${not empty qzid}">
     ${qzid}
    <div>로그아웃</div>
    <%// session.setAttribute("userid", id); %>
</c:if>


</body>
</html>

