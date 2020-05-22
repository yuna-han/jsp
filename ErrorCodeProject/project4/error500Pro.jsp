<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error500.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>에러코드 500이 곧 나타날 페이지</title>
</head>
<body>
	이 곳은 error500Pro.jsp 화면입니다.
	
	<!-- 존재하지 않는 jsp파일을 포함하여 서버 오류가 발생하도록 함. -->
	<jsp:include page="no_exist.jsp" flush="false"/>
</body>
</html>