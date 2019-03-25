package com.cg.capbook.beans;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;

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
	@Column(columnDefinition="BLOB")
	private byte[] data;
	private String securityQuestion;
	private String securityAnswer;
	@OneToMany(mappedBy="account",cascade=CascadeType.ALL)
	@MapKey
	private Map<String,Post> post=new HashMap<String, Post>();
	private String userBio;
	private String currentCity;
	private String designation;
	private String relationshipStatus;
	public Map<String, Post> getPost() {
		return post;
	}

	public void setPost(Map<String, Post> post) {
		this.post = post;
	}

	public Account(String emailId, int employeeId, String password, String firstName, String lastName,
			String dateOfBirth, char gender, String country, String securityQuestion, String securityAnswer) {
		super();
		this.emailId = emailId;
		this.employeeId = employeeId;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.country = country;
		this.securityQuestion = securityQuestion;
		this.securityAnswer = securityAnswer;
	}

	public Account(String emailId, int employeeId, String password, String firstName, String lastName,
			String dateOfBirth, char gender, String country, byte[] data, String securityQuestion,
			String securityAnswer, Map<String, Post> post) {
		super();
		this.emailId = emailId;
		this.employeeId = employeeId;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.country = country;
		this.data = data;
		this.securityQuestion = securityQuestion;
		this.securityAnswer = securityAnswer;
		this.post = post;
	}

	/*
	 *
	 * 
	 * //private List<Picture> picture;
	 * 
	 * private List<FriendList> friendLists;
	 * 
	 * private List<FriendRequest> friendRequests;
	 */
	public Account() {}
	
	public Account(String emailId, int employeeId, String password, String firstName, String lastName,
			String dateOfBirth, char gender, String country, byte[] data, String securityQuestion,
			String securityAnswer) {
		super();
		this.emailId = emailId;
		this.employeeId = employeeId;
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

	public Account(String emailId, int employeeId, String password, String firstName, String lastName,
			String dateOfBirth, char gender, String country, byte[] data, String securityQuestion,
			String securityAnswer, Map<String, Post> post, String userBio, String currentCity, String designation,
			String relationshipStatus) {
		super();
		this.emailId = emailId;
		this.employeeId = employeeId;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.country = country;
		this.data = data;
		this.securityQuestion = securityQuestion;
		this.securityAnswer = securityAnswer;
		this.post = post;
		this.userBio = userBio;
		this.currentCity = currentCity;
		this.designation = designation;
		this.relationshipStatus = relationshipStatus;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
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
		return "Account [emailId=" + emailId + ", employeeId=" + employeeId + ", password=" + password + ", firstName="
				+ firstName + ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender
				+ ", country=" + country + ", data=" + Arrays.toString(data) + ", securityQuestion=" + securityQuestion
				+ ", securityAnswer=" + securityAnswer + ", post=" + post + ", userBio=" + userBio + ", currentCity="
				+ currentCity + ", designation=" + designation + ", relationshipStatus=" + relationshipStatus + "]";
	}
	
}
