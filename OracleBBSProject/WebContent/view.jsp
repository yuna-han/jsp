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
		String sql = "SELECT * FROM BOARD2";
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
<title>게시글 보기</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
				<!-- 글 내용 -->
					<%
						while(rs.next()){
							String subject = rs.getString("SUBJECT");
							String content = rs.getString("BCONTENT");
							
					%>
					<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="subject" maxlength="50" value="<%=subject%>"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="2048" style="height: 350px;"><%=content %></textarea></td>
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
			<a href="index.jsp" class="btn btn-primary">목록</a>
			<a href="update.jsp" class="btn btn-primary">수정</a>
			<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deletePro.jsp" class="btn btn-primary">삭제</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>