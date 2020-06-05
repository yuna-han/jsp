<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시물</title>
	<style type="text/css">
		body{
			background: #EE8888;
		}
		table {
			border: 1px solid gray;
			border-collapse: collapse;
			background: #EEEEEE;
			border: 1px solid;
			box-shadow: 5px 5px black;
		}
		tr{
			border: 1px solid gray;
			border-collapse: collapse;
			background: #EEEEEE;
		}
		#content {
			width: 500px;
			height: 300px;
			vertical-align: top;
		}
	</style>
	
</head>
<body>
	<h1>게시글 확인</h1>
	<jsp:useBean id="posting" class="ch01.PostingList"/>
	<jsp:setProperty property="*" name="posting"/>
	<table>
			<tr>
				<th colspan="2" style="text-align:left; font-size: 30px;">
					${pageScope.posting.subject }
				</th>
			<tr>
				<td>이름</td>
				<td>${pageScope.posting.name }</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>${pageScope.posting.email }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td id="content">${pageScope.posting.content }</td>
			</tr>
		</table>
	
	

</body>
</html>