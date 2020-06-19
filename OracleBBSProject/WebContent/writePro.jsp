<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	//연결정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String pwd="1111";
	
	//1.드라이브 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2.연결 객체 생성
	Connection con = DriverManager.getConnection(url,user,pwd);
	
	//3.SQL 준비 및 실행
	String sql = "INSERT INTO BOARD2(BID, SUBJECT, BCONTENT, WRITER, REGDATE) VALUES(?,?,?,?,?);";
	PreparedStatement prst = con.prepareStatement(sql);
	prst.setString(2, request.getParameter("subject"));
	prst.setString(3, request.getParameter("writer"));
	prst.setString(4, request.getParameter("content"));
	

	prst.executeUpdate(sql);
	
	//5.객체 해제
	prst.close();
	con.close();
	
	response.sendRedirect("index.jsp");
		
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

</body>
</html>