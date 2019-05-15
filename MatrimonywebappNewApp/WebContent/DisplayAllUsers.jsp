<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.mt.dto.Users"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	<table border=2 align=center>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>SALARY</th>
			<th>JOB</th>
			<th>USER NAME</th>
		</tr>
		
		<% 
		ArrayList<Users> arrayList= (ArrayList<Users>)request.getAttribute("usersData");
		for(Users users : arrayList) { %>		 
		<tr>			
			<td><%=users.getUserId()%></td>
			<td><%=users.getFirstName()%></td>
			<td><%=users.getLastName()%></td>
			<td><%=users.getMailId()%></td>
			
			<% } %>
			</table>
			 -->
<jsp:include page="AdminHomePage.jsp" />
	<table border=2 align=center>
		<tr>
			<th>USERID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>MAILID</th>
		</tr>
		<c:forEach var="users" items="${usersData}">
			<tr>
				<td>${users.userId}</td>
				<td>${users.firstName}</td>
				<td>${users.lastName}</td>
				<td>${users.mailId}</td>
				<td><a href='Delete?userId=${users.userId}'>DELETE</a></td>
				</tr>
		</c:forEach>
	</table>
</body>
</html>





