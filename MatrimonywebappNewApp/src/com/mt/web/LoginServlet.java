package com.mt.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mt.dto.Users;
import com.mt.dao.UsersDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		System.out.println(userName);
		System.out.println(password);

		UsersDAO usersDao = new UsersDAO();
		Users users = usersDao.getUser(userName);

		out.print("<html>");		
		if(users!=null){
			HttpSession session = request.getSession(true);
			session.setAttribute("users", users);
			session.setAttribute("userName", userName);
			session.setAttribute("password", password);
			session.setAttribute("userName", users.getUserName());
			if(userName.equalsIgnoreCase("ADMIN") && password.equalsIgnoreCase("ADMIN123")) {
				RequestDispatcher rd = request.getRequestDispatcher("AdminHomePage.jsp");
				rd.include(request, response);	
			}
			else if(password.equals(users.getPassword()))
			{	
				String gnd = users.getGender();
				System.out.println("Gender" + gnd);
				System.out.println("Inside if " +password);
				if(users.getBodyType() == "NULL" || users.getMailId() == "NULL" || users.getPhoneNum() == 0 || users.getBodyType() == "NULL") {
					//request.setAttribute("userData", users);
					RequestDispatcher rd = request.getRequestDispatcher("Details.jsp");
					rd.forward(request, response);

				}
				else {
					RequestDispatcher rd = request.getRequestDispatcher("NewFile.jsp");
					rd.forward(request, response);
					
				}

					/*else if(gnd.equalsIgnoreCase("Female")) {
					UsersDAO userDao = new UsersDAO();
					ArrayList<Users> maleusers = (ArrayList<Users>) userDao.getAllMaleUsers();
					request.setAttribute("userData", users);
					request.setAttribute("maleusers", maleusers);
					RequestDispatcher rd = request.getRequestDispatcher("UserPage.html");
					//here NewFile nothing but User home page
					rd.forward(request, response);
				}
				else {
					UsersDAO userDao = new UsersDAO();
					ArrayList<Users> femaleusers = (ArrayList<Users>) userDao.getAllFemaleUsers();
					request.setAttribute("userData", users);
					request.setAttribute("femaleusers", femaleusers);
					RequestDispatcher rd = request.getRequestDispatcher("UserPage.html");
					rd.forward(request, response);

				}*/

			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("Login.html");
				rd.include(request, response);
				out.print("<center><h1>Oops! Wrong Password..</h1></center>");
			}
		}
		else
		{
			out.print("<body>");
			out.print("<center><h1>Invalid Credentials..</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("Login.html");
			rd.include(request, response);
			out.print("</body>");			
		}
		out.println("</html>");		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
