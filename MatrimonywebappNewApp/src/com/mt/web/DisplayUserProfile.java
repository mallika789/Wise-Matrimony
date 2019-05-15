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
import com.mt.dto.Users;
import com.mt.dao.UsersDAO;

@WebServlet("/DisplayUserProfile")
public class DisplayUserProfile extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(false);
		int userId = (Integer)session.getAttribute("userId");
		
		UsersDAO usersDAO = new UsersDAO();
		Users user = usersDAO.getUsers(userId);
		request.setAttribute("userData", user);
		
		RequestDispatcher rd = request.getRequestDispatcher("DisplayUserProfile.jsp");
		rd.include(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
