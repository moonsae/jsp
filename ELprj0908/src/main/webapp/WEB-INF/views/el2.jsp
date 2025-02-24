<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2> 저장소</h2>
<ul>
	<li>pageContext -> pageScope</li>
	<li>request -> requestScope</li>
	<li>session -> sessionScope</li>
	<li>application -> applicaionScope</li>
</ul>

<h3>request</h3>
<p>하나의 요청이 공유해야 할 데이터를 저장하는 공간</p>

<h3>session</h3>
<p> 사용자 한 명이 공유해야 하는 데이터를 저장하는 공간</p>

<h3>application</h3>
<p> 모든 사용자 공유해야 하는 데이터를 저장하는 공간 : 설정 정보, 데이터베이스연결정보</p>

<h3>pageContext</h3>
<p> jsp페이지 하나당 제공되는 저장소</p>
<p> jsp페이지 내에서 EL 사용하여 변수를 처리하고 싶을 대 사용한다.</p>

<h3>pageContext 예시</h3>
<% String test = "EL을 사용하고 싶어요"; %>
<%=test %>

<h3>test변수를 el을 사용하고 싶다 el은 저장소에 담긴 애들만 쓸 수 있음</h3>
<h3>EL표현식은 저장소에 저장된 것들만 사용할 수 있다</h3>
${test}

<%pageContext.setAttribute("test1",test); %>
${test1 }
</body>
</html>