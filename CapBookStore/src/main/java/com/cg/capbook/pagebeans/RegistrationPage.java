package com.cg.capbook.pagebeans;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class RegistrationPage {
	@FindBy(how=How.NAME,name="employeeId")
	private WebElement employeeId;
	
	@FindBy(how=How.NAME,name="password")
	private WebElement password;
	
	@FindBy(how=How.NAME,name="firstName")
	private WebElement firstName;
	
	@FindBy(how=How.NAME,name="lastName")
	private WebElement lastName;
	
	@FindBy(how=How.NAME,name="dateOfBirth")
	private WebElement dateOfBirth;
	
	@FindBy(how=How.NAME,name="country")
	private WebElement country;
	
	@FindBy(how=How.NAME,name="securityQuestion")
	private WebElement securityQuestion;
	
	@FindBy(how=How.NAME,name="emailId")
	private WebElement emailId;
	
	@FindBy(how=How.NAME,name="gender")
	private WebElement gender;
	
	@FindBy(how=How.NAME,name="securityAnswer")
	private WebElement securityAnswer;
	
	@FindBy(how=How.NAME,name="submit")
	private WebElement submitBtn;
	
	

	public String getEmployeeId() {
		return employeeId.getAttribute("value");
	}



	public void setEmployeeId(String employeeId) {
		this.employeeId.sendKeys(employeeId);
	}



	public String getPassword() {
		return password.getAttribute("value");
	}



	public void setPassword(String password) {
		this.password.sendKeys(password);
	}



	public String getFirstName() {
		return firstName.getAttribute("value");
	}



	public void setFirstName(String firstName) {
		this.firstName.sendKeys(firstName);
	}



	public String getLastName() {
		return lastName.getAttribute("value");
	}



	public void setLastName(String lastName) {
		this.lastName.sendKeys(lastName);
	}



	public String getDateOfBirth() {
		return dateOfBirth.getAttribute("value");
	}



	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth.sendKeys(dateOfBirth);
	}



	public String getCountry() {
		return country.getAttribute("value");
	}



	public void setCountry(String country) {
		this.country.sendKeys(country);
	}



	public String getSecurityQuestion() {
		return securityQuestion.getAttribute("value");
	}



	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion.sendKeys(securityQuestion);
	}



	public String getEmailId() {
		return emailId.getAttribute("value");
	}



	public void setEmailId(String emailId) {
		this.emailId.sendKeys(emailId);
	}



	public String getGender() {
		return gender.getAttribute("value");
	}



	public void setGender(String gender) {
		this.gender.sendKeys(gender);
	}



	public String getSecurityAnswer() {
		return securityAnswer.getAttribute("value");
	}



	public void setSecurityAnswer(String securityAnswer) {
		this.securityAnswer.sendKeys(securityAnswer);
	}



	public void clickSignUp() {
		submitBtn.click();
	}
}
