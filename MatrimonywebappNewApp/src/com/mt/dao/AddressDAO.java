package com.mt.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.mt.db.HibernateTemplate;
import com.mt.dto.Address;

public class AddressDAO {
	private SessionFactory factory = null;
	
	public Address getAddress(String address) {

		return (Address)HibernateTemplate.getObjectByUserName(address);
	}

	public int register(Address addresss) {
		return HibernateTemplate.addObject(addresss);
	}

	public List<Address> getAllAddress() {
		List<Address> addresses=(List)HibernateTemplate.getObjectListByQuery("From Address");
		System.out.println("Inside All Address ..."+addresses);
		return addresses;	
	}

	public Address getAddress(int id) {
		return (Address)HibernateTemplate.getObject(Address.class,id);
	}

}

