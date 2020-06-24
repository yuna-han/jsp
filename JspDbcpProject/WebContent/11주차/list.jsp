
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.*"%>
<%@page import="db.DBconn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    DBconn.open();
    
    String sql = "SELECT * FROM MEMBER";
    
    ResultSet rs = DBconn.selectQuery(sql);
    
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class = "container">
<h1 class="text-center font-weight-bold">로그인 정보</h1>
<br><br>
	<table class = "table table-hover">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
<%
	while(rs.next()) {
		String id = rs.getString("ID");
		String pwd = rs.getString("PWD");
		String name = rs.getString("NAME");
		String phone = rs.getString("PHONE");
		String email = rs.getString("EMAIL");
%>
		<tr>
			<td><%= id %></td>
			<td><%= pwd %></td>
			<td><%= name %></td>
			<td><%= phone %></td>
			<td><%= email %></td>
			<td><a href="modify.jsp?id=<%=id%>" >수정</a></td>
			<td><a href="delete.jsp?id=<%=id%>" >삭제</a></td>
		</tr>
<%}
	DBconn.close();
%>
	</table>
	</div>
</body>
</html>