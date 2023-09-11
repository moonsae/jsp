<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href = "./css/list.css" rel="stylesheet"/>
</head>
<body>

<table>
    <caption>참가자 등수 조회</caption>
	<tr>
		<td>참가자ID</td>
		<td>참가자이름</td>
		<td>총합점수</td>
		<td>평균점수</td>
		<td>순위</td>
	</tr>
	
	
	<%
	Connection con=null; 
	Statement st = null;
	ResultSet rs = null;
	try{
		// 데이터베이스 연결정보
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="1234";
		
		//1. 오라클드라이버 로딩
		Class.forName(driver); 
		//2. 데이터베이스 연결
		con= DriverManager.getConnection(url, user, password);
		//3. statement 얻어오기
		st = con.createStatement();
		//4. 필요한 sql 작성
		String sql =" select j.join_id as , "+
		            " j.join_nm as ,"+
		            " sum(s.score) as ,"+
		            " round(avg(s.score),2) as ,"+
		            " rank() over(order by round(avg(s.score),2) desc)"+ 
					" from tbl_score_200 s"+
					" join tbl_join_200 j"+
					" on s.artistid = j.join_id"+
					" group by j.join_id, j.join_nm"+
					" order by 5";
		//5. 최종적으로 실행
		rs = st.executeQuery( sql) ; 
		//6. 가져온 쿼리 결과를 화면에 출력하기
		while( rs.next() ) {

%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>

	</tr>
<% 
		}}catch(Exception e){
	e.printStackTrace();
	}
	finally{ //자원의 반납 
	if( rs!= null) rs.close();
	if( st != null) st.close();
	if( con != null) con.close();
	}
%>
</table>
</body>
</html>