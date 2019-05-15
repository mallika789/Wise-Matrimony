package com.mt.web;

import java.io.IOException;
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

import com.mt.dao.UsersDAO;
import com.mt.db.HibernateTemplate;
import com.mt.dto.Users;
import com.mt.dto.Users;
import com.mt.dto.Address;
import com.mt.dto.Hobbies;


@WebServlet("/BasicInfo")
public class BasicInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public BasicInfo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bodyType = request.getParameter("bodyType");
		String fatherStatus = request.getParameter("fatherStatus");
		String motherStatus = request.getParameter("motherStatus");
		String noOfBros = request.getParameter("noOfBros");
		String broStatus = request.getParameter("broStatus");
		String noOfSis = request.getParameter("noOfSis");
		String sisStatus = request.getParameter("sisStatus");
		String educationInDetail = request.getParameter("educationInDetail");
		String occupationInDetail = request.getParameter("occupationInDetail");
		String eatingHabit = request.getParameter("eatingHabit");
		String drinkingHabit = request.getParameter("drinkingHabit");
		String smokingHabit = request.getParameter("smokingHabit");
		String hobbies[] = request.getParameterValues("hobbies");
		List<String> hobbiesList = Arrays.asList(hobbies);
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String music = request.getParameter("music");
		String district = request.getParameter("district");
		System.out.println(district);

		request.getAttribute("userData");
		HttpSession session = request.getSession(true);

		//int uid = (int) session.getAttribute("uid");
		//Users users = (Users) HibernateTemplate.getObjectByUserId(uid);
		
		Users users = (Users) session.getAttribute("users");
		UsersDAO usersDao = new UsersDAO();
		users.setBodyType(bodyType);
		users.setFatherStatus(fatherStatus);
		users.setMotherStatus(motherStatus);
		users.setNoOfBros(noOfBros);
		users.setBroStatus(broStatus);
		users.setNoOfSis(noOfSis);
		users.setSisStatus(sisStatus);
		users.setEducationInDetail(educationInDetail);
		users.setOccupationInDetail(occupationInDetail);
		users.setEatingHabit(eatingHabit);
		users.setDrinkingHabit(drinkingHabit);
		users.setSmokingHabit(smokingHabit);
		users.setMusic(music);
		users.setCity(city);
		users.setCountry(country);
		users.setDistrict(district);
		users.setState(state);
		for(String hb:hobbiesList) {
			users.getHobbyies().add(new Hobbies(hb));
		}
		int x = UsersDAO.updateUsers(users);
		
		/*Address adrs = new Address();
		List <Address> addressList=new ArrayList<Address>();

		adrs.setCity(city);
		adrs.setCountry(country);
		adrs.setDistrict(district);
		adrs.setState(state);
		
		addressList.add(adrs);
		users.setAddressList(addressList);*/

		request.setAttribute("userData", users);
						
		RequestDispatcher rd = request.getRequestDispatcher("NewFile.jsp");

		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
