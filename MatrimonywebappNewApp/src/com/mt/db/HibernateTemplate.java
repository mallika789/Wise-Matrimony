package com.mt.db;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mt.dto.Users;

public class HibernateTemplate {

	private static SessionFactory sessionFactory;
	
	static
	{
		sessionFactory=new Configuration().configure().buildSessionFactory();
	}
	
	public static int addObject(Object obj)
	{
		int result=0;
		
		Transaction tx=null;
		
		try {
			
			Session session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			session.save(obj);
			
			tx.commit();
			
			result=1;
			
		} catch (Exception e) {
		
			tx.rollback();
			
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static Object getObject(Class c,Serializable serializable)
	{
		Object obj=null;
		
		try {			
			return sessionFactory.openSession().get(c,serializable);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return obj;
	}
	
	public static Object getObjectByUserName(String userName) {
	
	  String queryString = "from Users where userName = :userName";
	  Query query = sessionFactory.openSession().createQuery(queryString);
	  query.setString("userName", userName);
	  Object queryResult = query.uniqueResult();
	  Users users = (Users)queryResult;
	  System.out.println(users.getFirstName()+" "+users.getLastName()+" "+users.getPassword()); 
	  return users; 
	}
	
	public static Object getObjectByUserId(int userId) {
		
		  String queryString = "from Users where userId = :userId";
		  Query query = sessionFactory.openSession().createQuery(queryString);
		  query.setInteger("userId", userId);
		  Object queryResult = query.uniqueResult();
		  Users users = (Users)queryResult;
		  System.out.println(users.getFirstName()+" "+users.getLastName()+" "+users.getPassword()); 
		  return users; 
		}
	
	public static List<Object> getMaleObjectListByQuery() {
		
		  String queryString = "from Users where gender = 'Male'";
		  return sessionFactory.openSession().createQuery(queryString).list(); 
		}
	
	
	public static List<Object> getFemaleObjectListByQuery() {
		
		  String queryString = "from Users where gender = 'Female'";
		  return sessionFactory.openSession().createQuery(queryString).list(); 
		}


	

	
	public static List<Object> getObjectListByQuery(String query)
	{
		return sessionFactory.openSession().createQuery(query).list();
	}
	
	public static int updateObject(Object obj)
	{
		int result=0;
		
		Transaction tx=null;
		
		try {
			
			Session session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			//session.saveOrUpdate(obj);
			session.merge(obj);
			
			tx.commit();
			
			result=1;
			
		} catch (Exception e) {
		
			tx.rollback();
			
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static int deleteObject(Class c,Serializable serializable)
	{
		int result=0;
		
		Session session=sessionFactory.openSession();
		
		Transaction tx=session.beginTransaction();
		
		try {
			
			Object obj=session.get(c,serializable);
			
			session.delete(obj);
			
			tx.commit();
			
			result=1;
						
		} catch (Exception e) {
			
			e.printStackTrace();
			
			tx.rollback();
		}
		
		return result;
	}
}
