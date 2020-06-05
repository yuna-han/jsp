<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글쓰기 양식</title>
	<style type="text/css">
		body, input[type="submit"],input[type="reset"],input[type="button"] {
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
	</style>
</head>
<body>
	<h1>글쓰기</h1>
	<form action="result2.jsp" method="post">
		<table>
			<tr>
				<td colspan="2" style="text-align:right;">
					<a href="">글목록</a>
				</td>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" cols="80" rows="20" ></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
					<input type="submit" name="post" value="글쓰기">
					<input type="reset" name="post" value="다시작성">
					<input type="button" name="showList" value="목록보기">
				</td>
			</tr>
		</table>
	</form>
	

</body>
</html>