package com.mt.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import java.util.*;

@WebServlet("/Details")
public class Details extends HttpServlet {
	private static final long serialVersionUID = 1L;	
    public Details() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mailId = request.getParameter("mailId");
		String dateofbirth = request.getParameter("dob");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date birthDate = null;
		try {
			birthDate = sdf.parse(dateofbirth);
			System.out.println(dateofbirth);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		java.sql.Date dob = new java.sql.Date(birthDate.getTime());
		long phoneNum = Long.parseLong(request.getParameter("phoneNum"));
		String aadharNum = request.getParameter("aadharNum");		
		String maritalStatus = request.getParameter("maritalStatus");
		
		String feet = request.getParameter("feet");
		String inches = request.getParameter("inches");
		String height = feet+inches;
		System.out.println(height);
		String weight = request.getParameter("weight");

		String familyStatus = request.getParameter("familyStatus");
		String familyType = request.getParameter("familyType");

		String familyValues = request.getParameter("familyValues");
		String higherEducation = request.getParameter("higherEducation");
		
		String employedIn = request.getParameter("employedIn");
		String occupation = request.getParameter("occupation");
		String annualIncome = request.getParameter("annualIncome");

		int age = Integer.parseInt(request.getParameter("age"));

		System.out.println(feet + " " + inches);
		
		
		String caste = request.getParameter("caste");
		String subCaste = request.getParameter("subCaste");
		String religion = request.getParameter("religion");

	//	request.getAttribute("userData");
		
		HttpSession session = request.getSession(true);
		Users users = (Users) session.getAttribute("users");
		
		//Users users = (Users) HibernateTemplate.getObjectByUserId(iobj.intValue());
		
		UsersDAO usersDao = new UsersDAO();
	
		users.setUserId(users.getUserId());
		
		users.setMaritalStatus(maritalStatus);
		users.setHeight(height);
		users.setWeight(weight);
		users.setFamilyStatus(familyStatus);
		users.setFamilyValues(familyValues);
		users.setFamilyType(familyType);
		users.setHigherEducation(higherEducation);
		users.setEmployedIn(employedIn);
		users.setAnnualIncome(annualIncome);
		users.setReligion(religion);
		users.setPhoneNum(phoneNum);
		users.setDob(dob);
		users.setAadharNum(aadharNum);
		users.setCaste(subCaste);
		users.setSubcaste(subCaste);
		users.setMailId(mailId);
		users.setAge(age);
		
		int x = UsersDAO.updateUsers(users);
		
		request.setAttribute("userData", users);
		
		RequestDispatcher rd = request.getRequestDispatcher("BasicInfo.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
