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
	<tr>
		<td>고객전화번호</td>
		<td>예약번호</td>
		<td>예약시간<br>(시/분)</td>
		<td>예약일자<br>(년/월/일)</td>
		<td>고객명</td>
		<td>출발지</td>
		<td>목적지</td>
		<td>택시번호</td>
		<td>상태</td>
		<td>관리</td>
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
		String sql =  " SELECT SUBSTR(CUST.TEL,1,3)||'-'||SUBSTR(CUST.TEL,4,4)||'-'||SUBSTR(CUST.TEL,8,4),"+
		               " CALL.REGNO,"+
                       " SUBSTR((LPAD(REGTIME,4,'0')),1,2) || ':' || SUBSTR((LPAD(REGTIME,4,'0')),3,2), "+
                       " TO_CHAR(CALL.REGDATE,'YYYY-MM-DD'),"+
                       " CUST.NAME 고객명,"+
                       " CALL.STARTPOINT 출발지,"+
                       " CALL.DESTINATION 목적지, "+
                       " CALL.TAXINO 택시번호,"+
                       " DECODE(CALL.STATE,'P','배차완료','R','배차준비','X','배차미정')"+
					   " FROM TALCALL_LIST CALL"+
					   " JOIN TBLCUST CUST"+
					   " ON CALL.CUSNO = CUST.ID";
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
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(7) %></td>
		<td><%=rs.getString(8) %></td>
		<td><%=rs.getString(9) %></td>
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