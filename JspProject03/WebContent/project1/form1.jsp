<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과제1-개인면담 카드</title>

<style>
	table, td{
		border: 1px solid black;
		border-collapse: collapse;
	}
	th{
		border: 1px solid black;
		border-collapse: collapse;
		background-color: #9911FF;
		color: yellow;
	}
</style>
</head>
<body>

	<h2>개인면담 카드</h2>
	<hr>
	<form method="post" action="result1.jsp">
		<table>
			<tr>
				<th>소속</th>
				<td><input type="text" name="department"></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>현주소</th>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<th>입사년월일</th>
				<td><input type="text" name="hireDate" placeholder="연도-월-일"></td>
			</tr>
			<tr>
				<th>최종학력</th>
				<td>
					<input type="radio" name="level" value="중졸">중졸
					<input type="radio" name="level" value="고졸">고졸
					<input type="radio" name="level" value="전문대졸">전문대졸
					<input type="radio" name="level" value="대졸">대졸
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<fieldset>
						<legend>자격증</legend>
						<input type="checkbox" name="cetificate" value="자동차2종">자동차2종
			 			<input type="checkbox" name="cetificate" value="정보처리산업기사">정보처리산업기사
			 			<input type="checkbox" name="cetificate" value="컴퓨터활용">컴퓨터활용
			 			<input type="checkbox" name="cetificate" value="기타">기타<br>
					</fieldset>
				</td>
			</tr>
			<tr>
				<th>상담내용</th>
				<td><textarea name="content" rows="10" cols="50" placeholder="상담내역 입력하기"></textarea></td>
			</tr>
			<tr>
				<td colspan='2'>
						<input type="submit" value="입력완료" style="margin-left: 150px;">
						<input type="reset" value="다시입력">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>