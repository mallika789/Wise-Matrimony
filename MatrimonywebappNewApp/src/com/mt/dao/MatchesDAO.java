package com.mt.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.mt.db.HibernateTemplate;

import com.mt.dto.Matches;

public class MatchesDAO {
	private SessionFactory factory = null;
	
	public Matches getMatches(String matchId) {

		return (Matches)HibernateTemplate.getObjectByUserName(matchId);
	}

	public int register(Matches match) {
		return HibernateTemplate.addObject(match);
	}

	public List<Matches> getAllMatches() {
		List<Matches> matches=(List)HibernateTemplate.getObjectListByQuery("From Matches");
		System.out.println("Inside All Matches ..."+matches);
		return matches;	
	}

	public Matches getMatch(int id) {
		return (Matches)HibernateTemplate.getObject(Matches.class,id);
	}


}
