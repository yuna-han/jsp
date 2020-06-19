<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//연결정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String pwd="1111";
	
	//1.드라이브 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2.연결 객체 생성
	Connection con = DriverManager.getConnection(url,user,pwd);
	
	//3.SQL 준비 및 실행
	String sql = "SELECT * FROM BOARD2;";
	Statement st = con.createStatement();
	
	//4.반환 객체
	ResultSet rs = st.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>게시판</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<table class="table table-hover" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<!-- 게시판 글 목록 -->
					<%
						while(rs.next()){
							String id = rs.getString("BID");
							String subject = rs.getString("SUBJECT");
							String writer = rs.getString("WRITER");
							String rdate = rs.getString("REGDATE");
							
					%>
					<tr>
						<td><%=id %></td>
						<td><a href="view.jsp"><%=subject %></td>
						<td><%=writer %></td>
						<td><%=rdate %></td>
					</tr>
					<%
						}
						//6.객체 해제
						rs.close();
						st.close();
						con.close();
					%>
				</tbody>
			</table>
			<!-- 게시판 페이지 이동 버튼 -->
			<a href="bbs.jsp?pageNumber=" class="btn btn-success btn-arraw-left">이전</a>
			<a href="bbs.jsp?pageNumber=" class="btn btn-success btn-arraw-left">다음</a>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>