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
	String sql = "DELETE FROM BOARD2 WHERE BID=?";
	
	PreparedStatement prst = con.prepareStatement(sql);
	prst.setString(1, request.getParameter("id"));


	int i = prst.executeUpdate();
	
	//5.객체 해제
	prst.close();
	con.close();
	
	response.sendRedirect("index.jsp");
		
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 삭제</title>
</head>
<body>

</body>
</html>