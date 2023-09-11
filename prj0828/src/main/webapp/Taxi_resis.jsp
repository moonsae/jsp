<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href = "./css/taxiInput.css" rel="stylesheet"/>
</head>
<body>

<div>
	<table>
		<tr>
			<td>예약번호</td>
			<td><input type="text" name="resNo"></td>
		</tr>
		<tr>
			<td>예약시간</td>
			<td><input type="text" name="resTime"></td>
		</tr>
		<tr>
			<td>예약날짜</td>
			<td><input type="text" name="resDate"></td>
		</tr>
		<tr>
			<td>고객아이디</td>
			<td><input type="text" name="userid"></td>
		</tr>
		<tr>
			<td>출발지</td>
			<td><input type="text" name="start"></td>
		</tr>
		<tr>
			<td>목적지</td>
			<td><input type="text" name="end"></td>
		</tr>
		<tr>
			<td>택시번호</td>
			<td><input type="text" name="TexiNo"></td>
		</tr>
		<tr>
			<td>배차상태</td>
			<td><select name="state">
			       <option value="">선택하기</option>
			       <option value="P">배차완료</option>
			       <option value="R">배차준비</option>
			       <option value="X">배차미정</option>
				</select>
			</td>
		</tr>
	</table>
</div>

<div class="box1">
	<div class="box2">
	<ul>선택하기
	  <li>[P] 배차완료</li>
	  <li>[R] 배차준비</li>
	  <li>[X] 배차미정</li>
	</ul>
	</div>
</div>
</body>
</html>