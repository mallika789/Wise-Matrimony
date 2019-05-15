package com.mt.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.mt.dto.Users;

@Embeddable
public class Address  {
	
	@Column(length=25)
	private String country;
	
	@Column(length=25)
	private String state;
	
	@Column(length=25)
	private String district;
	
	@Column(length=25)
	private String city;
	
	/*@ManyToOne
	@JoinColumn(name="USER_ID")
	private Users user;*/

	public Address(){
		super();
	}
	
	
	
	public Address(String country, String state, String district, String city) {
		super();
		this.country = country;
		this.state = state;
		this.district = district;
		this.city = city;
	}



	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "Address [country=" + country + ", state=" + state + ", district=" + district + ", city=" + city + "]";
	}
	
}
