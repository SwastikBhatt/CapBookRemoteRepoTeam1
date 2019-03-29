package com.cg.capbook.beans;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
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
	private String firstName, lastName;
	private String dateOfBirth;
	private char gender;
	private String country;
	//	@Column(columnDefinition="BLOB")
	private String data;
	private String securityQuestion;
	private String securityAnswer;

	@OneToMany(mappedBy="account",cascade=CascadeType.ALL)

	@MapKey private Map<String,ImageAlbum> images=new HashMap<String,ImageAlbum>();

	@OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
	@MapKey
	private Map<String, Post> posts = new HashMap<String, Post>();
	private String userBio;
	private String currentCity;
	private String designation;
	private String relationshipStatus;

	//	@OneToMany(mappedBy="account",cascade=CascadeType.ALL)
	//	@MapKey
	//	private List<String> posts;

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

	/*
	 *
	 * 
	 * //private List<Picture> picture;
	 * 
	 * private List<FriendList> friendLists;
	 * 
	 * private List<FriendRequest> friendRequests;
	 */
	public Account() {
	}

	public Account(String emailId, int employeeId, String password, String firstName, String lastName,
			String dateOfBirth, char gender, String country, String data, String securityQuestion,
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
			String dateOfBirth, char gender, String country, String data, String securityQuestion,
			String securityAnswer, Map<String, Post> posts) {
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
		this.posts = posts;
	}

	public Account(String emailId, int employeeId, String password, String firstName, String lastName,
			String dateOfBirth, char gender, String country, String data, String securityQuestion,
			String securityAnswer, String userBio, String currentCity, String designation, String relationshipStatus,
			Map<String, Post> posts) {
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
		this.userBio = userBio;
		this.currentCity = currentCity;
		this.designation = designation;
		this.relationshipStatus = relationshipStatus;
		this.posts = posts;
	}

	public Map<String, ImageAlbum> getImages() {
		return images;
	}



	public void setImages(Map<String, ImageAlbum> images) {
		this.images = images;
	}



	public Account(String emailId, int employeeId, String password, String
			firstName, String lastName, String dateOfBirth, char gender, String country,
			String data, String securityQuestion, String securityAnswer, Map<String,
			ImageAlbum> images, Map<String, Post> posts, String userBio, String
			currentCity, String designation, String relationshipStatus) { 
		super();
		this.emailId = emailId;
		this.employeeId = employeeId;
		this.password =password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth; 
		this.gender = gender; this.country = country;

		this.data = data; 
		this.securityQuestion = securityQuestion;

		this.securityAnswer = securityAnswer; 
		this.images = images; 
		this.posts =posts; 
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

	public String getData() {
		return data;
	}

	public void setData(String data) {
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


	public Map<String, Post> getPost() { return posts; }



	public void setPost(Map<String, Post> post) { this.posts = post; }

	@Override
	public String toString() {
		return "Account [emailId=" + emailId + ", employeeId=" + employeeId + ", password=" + password + ", firstName="
				+ firstName + ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender
				+ ", country=" + country + ", data=" + data + ", securityQuestion=" + securityQuestion
				+ ", securityAnswer=" + securityAnswer + ", images=" + images + ", userBio=" + userBio
				+ ", currentCity=" + currentCity + ", designation=" + designation + ", relationshipStatus="
				+ relationshipStatus + "]";
	}


}
