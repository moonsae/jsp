<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>원하는 수만큼의 별을 출력하기</h2>
<%
int su = Integer.parseInt(request.getParameter("su"));
for(int i=0; i<su; i++){
    out.println("*");
}
%>

</body>
</html>