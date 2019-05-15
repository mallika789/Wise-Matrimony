package com.mt.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.mt.dto.Users;

@Entity
public class Matches {
	@Id@GeneratedValue
	private int matchId;
	@Column(length=25)
	private int brideId;
	@Column(length=25)
	private int groomId;
	
	@Column(length=25)
	private Date matchDate;

	/*@ManyToOne
	@Column(name="bride_id")
	@JoinColumn(name="USER_ID", unique = true)
	private Users bride;
	
	@ManyToOne
	@Column(name="groom_id")
	@JoinColumn(name="USER_ID", unique = true)
	private Users groom;*/
	
	public int getBrideId() {
		return brideId;
	}
	public void setBrideId(int brideId) {
		this.brideId = brideId;
	}
	public int getGroomId() {
		return groomId;
	}
	public void setGroomId(int groomId) {
		this.groomId = groomId;
	}
	
	public Date getMatchDate() {
		return matchDate;
	}
	public void setMatchDate(Date matchDate) {
		this.matchDate = matchDate;
	}
	@Override
	public String toString() {
		return "Matches [brideId=" + brideId + ", groomId=" + groomId + ", matchedId=" + matchId + ", matchDate="
				+ matchDate + "]";
	}
	public Matches(int brideId, int groomId, int matchId, Date matchDate) {
		super();
		this.brideId = brideId;
		this.groomId = groomId;
		this.matchId = matchId;
		this.matchDate = matchDate;
	}
	public Matches() {
		
		// TODO Auto-generated constructor stub
	}
	public int getMatchId() {
		return matchId;
	}
	public void setMatchId(int matchId) {
		this.matchId = matchId;
	}
	/*public Matches getMatch() {
		return match;
	}
	public void setMatch(Matches match) {
		this.match = match;
	}*/		
	
}
