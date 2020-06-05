<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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
			<td>${pageScope.student.num }</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${pageScope.student.name }</td>
		</tr>
		<tr>
			<th>학년</th>
			<td>${pageScope.student.grade }</td>
		</tr>
		<tr>
			<th>선택과목</th>
			<td>${pageScope.student.subject }</td>
		</tr>
	</table>
	

</body>
</html>