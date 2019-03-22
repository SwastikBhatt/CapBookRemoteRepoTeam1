package com.cg.capbook.beans;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Account {
	@Id
	private String emailId;
	private int employeeId;	
	private String password;
	private String firstName,lastName;
	private String dateOfBirth;
	private char gender;
	private String country;
	private byte[] data;
	private String securityQuestion;
	private String securityAnswer;

	/*
	 * @OneToOne private Wall wall;
	 * 
	 * //private List<Picture> picture;
	 * 
	 * private List<FriendList> friendLists;
	 * 
	 * private List<FriendRequest> friendRequests;
	 */
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(int employeeId, String emailId, String password, String firstName, String lastName,
			String dateOfBirth, char gender, String country, byte[] data, String securityQuestion,
			String securityAnswer) {
		super();
		this.employeeId = employeeId;
		this.emailId = emailId;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.country = country;
		this.data = data;
		this.securityQuestion = securityQuestion;
		this.securityAnswer = securityAnswer;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	public String getSecurityQuestion() {
		return securityQuestion;
	}

	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion = securityQuestion;
	}

	public String getSecurityAnswer() {
		return securityAnswer;
	}

	public void setSecurityAnswer(String securityAnswer) {
		this.securityAnswer = securityAnswer;
	}

	@Override
	public String toString() {
		return "Account [employeeId=" + employeeId + ", emailId=" + emailId + ", password=" + password + ", firstName="
				+ firstName + ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender
				+ ", country=" + country + ", data=" + Arrays.toString(data) + ", securityQuestion=" + securityQuestion
				+ ", securityAnswer=" + securityAnswer + "]";
	}
	


}
