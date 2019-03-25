package com.cg.capbook.beans;

import javax.persistence.Embeddable;

@Embeddable
public class Profile {
	private String userBio;
	private String currentCity;
	private String designation;
	private String relationshipStatus;
	public Profile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Profile(String userBio, String currentCity, String designation, String relationshipStatus) {
		super();
		this.userBio = userBio;
		this.currentCity = currentCity;
		this.designation = designation;
		this.relationshipStatus = relationshipStatus;
	}
	public String getUserBio() {
		return userBio;
	}
	public void setUserBio(String userBio) {
		this.userBio = userBio;
	}
	public String getCurrentCity() {
		return currentCity;
	}
	public void setCurrentCity(String currentCity) {
		this.currentCity = currentCity;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getRelationshipStatus() {
		return relationshipStatus;
	}
	public void setRelationshipStatus(String relationshipStatus) {
		this.relationshipStatus = relationshipStatus;
	}
	@Override
	public String toString() {
		return "Profile [userBio=" + userBio + ", currentCity=" + currentCity + ", designation=" + designation
				+ ", relationshipStatus=" + relationshipStatus + "]";
	}
	
}
