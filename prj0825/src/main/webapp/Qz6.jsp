<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>약수</h2>
<%
int su = Integer.parseInt(request.getParameter("su"));
int su_half = su/2;
for(int i=1; i<=su_half; i++){
    if(su %i == 0)
    	out.println(i);
}
out.println(su);
%>

</body>
</html>