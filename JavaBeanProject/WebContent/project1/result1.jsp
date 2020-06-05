<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>학생정보</title>
	<style type="text/css">
		table, th, td{
			border: 1px solid black;
			border-collapse: collapse;
			}
	</style>
</head>
<body>
	<h2>학생정보</h2>
	<hr>
	
	<jsp:useBean id="student" class="ch01.Student"/>
	<jsp:setProperty property="*" name="student"/>
	
	<table>
		<tr>
			<th>학번</th>
			<td><jsp:getProperty property="num" name="student"/></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><jsp:getProperty property="name" name="student"/></td>
		</tr>
		<tr>
			<th>학년</th>
			<td><jsp:getProperty property="grade" name="student"/></td>
		</tr>
		<tr>
			<th>선택과목</th>
			<td><jsp:getProperty property="subject" name="student"/></td>
		</tr>
	</table>
	

</body>
</html>