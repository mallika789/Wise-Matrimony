package com.mt.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.mt.db.HibernateTemplate;
import com.mt.dto.Users;

public class UsersDAO {

	private SessionFactory factory = null;
	
	public Users getUsers(String user) {

		return (Users)HibernateTemplate.getObjectByUserName(user);
	}
	
	public Users getUsers(int userId) {

		return (Users)HibernateTemplate.getObjectByUserId(userId);
	}


	public int register(Users users) {
		return HibernateTemplate.addObject(users);
	}

	public List<Users> getAllUsers() {
		List<Users> users=(List)HibernateTemplate.getObjectListByQuery("From Users");
		System.out.println("Inside All Users ..."+users);
		return users;	
	}
	
	public List<Users> getAllMaleUsers() {
		List<Users> users=(List)HibernateTemplate.getMaleObjectListByQuery();
		System.out.println("Inside All Users ..."+users);
		return users;	
	}
	
	public List<Users> getAllFemaleUsers() {
		List<Users> users=(List)HibernateTemplate.getFemaleObjectListByQuery();
		System.out.println("Inside All Users ..."+users);
		return users;	
	}
	

	public Users getUser(String userName) {
		return (Users)HibernateTemplate.getObjectByUserName(userName);
	}

	public static int deleteUser(int userId) {
		return HibernateTemplate.deleteObject(Users.class,userId);
	}

	public static int updateUsers(Users users) {
		return HibernateTemplate.updateObject(users);
	}
}