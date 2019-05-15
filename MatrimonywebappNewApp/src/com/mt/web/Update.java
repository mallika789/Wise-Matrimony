package com.mt.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mt.dao.UsersDAO;
import com.mt.db.HibernateTemplate;
import com.mt.dto.Users;
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String mailId = request.getParameter("mailId");
		int phoneNum = Integer.parseInt(request.getParameter("phoneNum"));
		String password = request.getParameter("password");
		String higherEducation = request.getParameter("higherEducation");
		String maritalStatus = request.getParameter("maritalStatus");
		String weight = request.getParameter("weight");
		String familyStatus = request.getParameter("familyStatus");
		String familyValues = request.getParameter("familyValues");
		String familyType = request.getParameter("familyType");
		String employedIn = request.getParameter("employedIn");
		String occupation = request.getParameter("occupation");
		String annualIncome = request.getParameter("annualIncome");
		String fatherStatus = request.getParameter("fatherStatus");
		String motherStatus = request.getParameter("motherStatus");
		String broStatus = request.getParameter("broStatus");
		String sisStatus = request.getParameter("sisStatus");
		
		request.getAttribute("userData");
		
		HttpSession session = request.getSession(true);
		Integer iobj = (Integer) session.getAttribute("uid");
		
		Users users = (Users) HibernateTemplate.getObjectByUserId(iobj.intValue());
		
		UsersDAO usersDao = new UsersDAO();
		
		users.setFirstName(firstName);
		users.setLastName(lastName);
		users.setMailId(mailId);
		users.setPhoneNum(phoneNum);
		users.setPassword(password);
		users.setHigherEducation(higherEducation);
		users.setMaritalStatus(maritalStatus);
		users.setWeight(weight);
		users.setFamilyStatus(familyStatus);
		users.setFamilyValues(familyValues);
		users.setFamilyType(familyType);
		users.setEmployedIn(employedIn);
		users.setAnnualIncome(annualIncome);
		users.setFatherStatus(fatherStatus);
		users.setMotherStatus(motherStatus);
		users.setBroStatus(broStatus);
		users.setSisStatus(sisStatus);
				
		request.setAttribute("userData", users);
		
		UsersDAO UsersDao = new UsersDAO();
		int x = UsersDAO.updateUsers(users);
		if(x > 0){
			out.print("<h1><center>Update Success..</center></h1>");	
			RequestDispatcher rd = request.getRequestDispatcher("UserHomePage.jsp");
			rd.include(request, response);
		}
		else {
			out.print("<body bgcolor=yellow text=red>");
			out.print("<h1><center>Registration Failure..</center></h1>");	
			RequestDispatcher rd = request.getRequestDispatcher("UserHomePage.jsp");
			rd.include(request, response);
			out.println("</body>");
		}
		out.println("</html>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doGet(request, response);
	}

} 
