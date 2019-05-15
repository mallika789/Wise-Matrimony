package com.mt.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.mt.db.HibernateTemplate;
import com.mt.dto.Hobbies;

public class HobbiesDAO {
	
	private SessionFactory factory = null;
	
	public Hobbies getMatches(String hobbyName) {

		return (Hobbies)HibernateTemplate.getObjectByUserName(hobbyName);
	}

	public int register(Hobbies hobby) {
		return HibernateTemplate.addObject(hobby);
	}

	public List<Hobbies> getAllHobbies() {
		List<Hobbies> hobbies=(List)HibernateTemplate.getObjectListByQuery("From Matches");
		System.out.println("Inside All Matches ..."+hobbies);
		return hobbies;	
	}

	public Hobbies getMatch(int id) {
		return (Hobbies)HibernateTemplate.getObject(Hobbies.class,id);
	}



}
