<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello world</h1>

<h2>1부터 10까지 출력</h2>
<% 
int sum=0;
for(int i=1; i<=10; i++){
	sum +=i;
	out.println( i +"<br>");
}
out.println(sum);
%>

</body>
</html>