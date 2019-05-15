package com.mt.dto;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.mt.dto.Users;

@Embeddable
public class Hobbies {
	@Column(length=25)
	private String hobbyName;
	/*@ManyToOne
	@JoinColumn(name="userId")*/
	
	
	public String getHobbyName() {
		return hobbyName;
	}
	public void setHobbyName(String hobbyName) {
		this.hobbyName = hobbyName;
	}
	
	public Hobbies() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Hobbies(String hobbyName) {
		super();
		this.hobbyName = hobbyName;
	
	}
	@Override
	public String toString() {
		return "Hobbies [hobbyName=" + hobbyName + "]";
	}
	
	
	
}
