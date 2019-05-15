package com.mt.web;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/PatnerPreferences")
public class PatnerPreferences extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public PatnerPreferences() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String religionpreferences = request.getParameter("religionPreferences");
		String countrylivingin = request.getParameter("countrylivingIn");
		String citizenship = request.getParameter("citizenShip");
		String education = request.getParameter("education");
		String occupation = request.getParameter("occupation");
		String annualincome = request.getParameter("annualIncome");
	
			
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}