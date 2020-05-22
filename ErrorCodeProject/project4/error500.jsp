<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>에러 페이지</title>
</head>
<body>
	<h2>요청하신 페이지에 연결할 수 없습니다.</h2>
	서버 내부에 문제가 발생하였습니다. 빠른 시일 내에  문제를 해결하겠습니다.<br><hr>
	
	<img src="https://www.nesolution.com/httperror/images/500_error_title.gif">
	<hr>
	<!-- 발생한 오류가 서버 내부 오류(500)이 맞는지 확인하기 위함. -->
	예외 타입 : <%=exception.getClass().getName() %>
</body>
</html>