<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
		/*
		   Users users = (Users)request.getAttribute("employeeData");
			out.println("<table border=2 align=center>");
			out.println("<tr>");
			out.println("<th>ID</th><th>NAME</th><th>SALARY</th><th>JOB</th><th>USER NAME</th>");
			out.println("</tr>");
			out.println("<tr>");
			out.println(""+users.getId()+""+users.getName()+""+users.getSalary()+""+users.getJob()+""+users.getUserName()+"");
			out.println("</tr>");
			out.println("</table>");*/
	%>
 
 	<table border=2 align=center>
		<tr>
			<th>ID</th>
			<th>FIRSTNAME</th>
			<th>LASTNAME</th>
			<th>MAILID</th>
			<th>PASSWORD</th>
			<th>GENDER</th>
			<th>DOB</th>
			<th>MARITALSTATUS</th>
			<th>HEIGHT</th>
			<th>WEIGHT</th>
			<th>FAMILYSTATUS</th>
			<th>FAMILYVALUES</th>
			<th>FAMILYTYPE</th>
			<th>HIGHEREDUCATION</th>
			<th>EMPLOYEDIN</th>
			<th>OCCUPATION</th>
			<th>ANNUALINCOME</th>
			<th>RELIGION</th>
			<th>CASTE</th>
			<th>SUBCASTE</th>
			<th>PHONENUMBER</th>
			<th>HOBBY</th>
		</tr>
		<tr>
			${userData.userId}
			${userData.firstName}
			${userData.lastName}
			${userData.mailId}
			${userData.password}
			${userData.gender}
			${userData.dob}
			${userData.maritalStatus}
			${userData.height}
			${userData.weight}
			${userData.familyStatus}
			${userData.familyValues}
			${userData.familyType}
			${userData.higherEducation}
			${userData.employedIn}
			${userData.occupation}
			${userData.annualIncome}
			${userData.religion}
			${userData.caste}
			${userData.subcaste}
			${userData.phoneNum}
			${userData.hobby}
			
					</tr>
	</table>
      
</body>
</html>
