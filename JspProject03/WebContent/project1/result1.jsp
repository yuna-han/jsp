<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
    
    <%@ page import="java.util.*" %>
    
    <%
	    request.setCharacterEncoding("UTF-8");
		
	    String department = request.getParameter("department");
		session.setAttribute("department", department);
		
		String name = request.getParameter("name");
		session.setAttribute("name", name);
		
		String address = request.getParameter("address");
		session.setAttribute("address", address);
		
		String hireDate = request.getParameter("hireDate");
		session.setAttribute("hireDate", hireDate);
		
		String level = request.getParameter("level");
		session.setAttribute("level", level);
		
		String[] certificate = request.getParameterValues("certificate");
		session.setAttribute("certificate", certificate);
		
		String content = request.getParameter("content");
		session.setAttribute("content", content);    
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과제1-사용자 입력확인</title>

	<style>

		table, th, td{
			border: 1px solid black;
			border-collapse: collapse;
		}		
		
	</style>

</head>
<body>

	<h2>사용자 입력 확인</h2>
	<hr>

	<table>
	
		<tr>
			<th>컨트롤 요소</th>
			<th>입력값</th>
		</tr>
		
		<tr>
			<td>소속</td>
			<td><%=department %></td>
		</tr>
		
		<tr>
			<td>성명</td>
			<td><%=name %></td>
		</tr>
		
		<tr>
			<td>현주소</td>
			<td><%=address %></td>
		</tr>
		
		<tr>
			<td>입사연월일</td>
			<td><%=hireDate %></td>
		</tr>
		
		<tr>
			<td>학력</td>
			<td><%=level %></td>
		</tr>
		
		<tr>
			<td>자격증</td>
			<td>
				<%
					for(int i=0; i<certificate.length; i++){
						out.println(certificate[i] + " ");
					}
				%>
			</td>
		</tr>
		
		<tr>
			<td>상담내용</td>
			<td><%=content %></td>
		</tr>
		
		<tr>
			<td>각 폼 컨트롤의 이름들</td>
			<td>
				<%
					Enumeration names = session.getAttributeNames();
					while(names.hasMoreElements()){
						String fName = (String)names.nextElement();
		            	out.print(fName +" ");
		        	}
				%>
			</td>
		</tr>
				
	</table>

</body>
</html>