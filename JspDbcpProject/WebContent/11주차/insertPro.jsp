<%@page import="db.DBconn"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   		request.setCharacterEncoding("utf-8");

		DBconn.open();
	
		String sql = "INSERT INTO member VALUES(?, ?, ?, ?, ?)";
		PreparedStatement prst = DBconn.updateQuery(sql);
		prst.setString(1, request.getParameter("id"));
		prst.setString(2, request.getParameter("pwd"));
		prst.setString(3, request.getParameter("name"));
		prst.setString(4, request.getParameter("phone"));
		prst.setString(5, request.getParameter("email"));
	
		int i = prst.executeUpdate();

		prst.close();
		DBconn.close();
		
		response.sendRedirect("list.jsp");
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