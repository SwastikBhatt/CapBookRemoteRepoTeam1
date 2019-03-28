package com.cg.capbook.stepdefinition;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;

import com.cg.capbook.pagebeans.RegistrationPage;

import cucumber.api.PendingException;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class RegistrationStepDefinition {
	
	private WebDriver driver;
	private RegistrationPage pageBean;
	

	@Before
	public void setUpStepEnv() {
		System.setProperty("webdriver.chrome.driver", "D:\\Software backup\\chromedriver.exe");
	}
	
@Given("^user is accessing CapBook Registration Page$")
public void user_is_accessing_CapBook_Registration_Page() throws Throwable {
	driver=new ChromeDriver();
	driver.get("http://localhost:4444/registrationPage");
	pageBean=PageFactory.initElements(driver, RegistrationPage.class);
}

@When("^user is trying to submit request after entering valid set of information$")
public void user_is_trying_to_submit_request_after_entering_valid_set_of_information() throws Throwable {
	pageBean.setEmployeeId("213");
	pageBean.setEmailId("swastik1@capgemini.com");
	pageBean.setPassword("S1111111111s");
    pageBean.setFirstName("Swastik");
    pageBean.setLastName("Bhattacharya");
    pageBean.setCountry("India");
	pageBean.setSecurityAnswer("Dog");
	pageBean.setSecurityQuestion("What Is the name of your pet ?");
	pageBean.setGender("m");
	pageBean.setDateOfBirth("12-12-2000");
	driver.findElement(By.id("submit")).submit();
}

@Then("^Your Registration has successfully done$")
public void your_Registration_has_successfully_done() throws Throwable {
	String actualTitle=driver.getTitle();
    String expectedTitle="Registration";
    Assert.assertEquals(expectedTitle, actualTitle);
}

@Given("^user is accessing Registration Page$")
public void user_is_accessing_Registration_Page() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without 'emailId'$")
public void user_is_trying_to_submit_data_without_emailId() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@Then("^'Please fill out this field\\.'$")
public void please_fill_out_this_field() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without entering 'Password'$")
public void user_is_trying_to_submit_data_without_entering_Password() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@Then("^'Please match the requested format\\.Must contain at least one number and one uppercase and lowercase letter, and at least (\\d+) or more characters'$")
public void please_match_the_requested_format_Must_contain_at_least_one_number_and_one_uppercase_and_lowercase_letter_and_at_least_or_more_characters(int arg1) throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without entering 'firstName'$")
public void user_is_trying_to_submit_data_without_entering_firstName() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without entering 'lastName'$")
public void user_is_trying_to_submit_data_without_entering_lastName() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without entering 'dateOfBirth'$")
public void user_is_trying_to_submit_data_without_entering_dateOfBirth() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without entering 'Gender'$")
public void user_is_trying_to_submit_data_without_entering_Gender() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without entering 'Country'$")
public void user_is_trying_to_submit_data_without_entering_Country() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without entering 'Security Question'$")
public void user_is_trying_to_submit_data_without_entering_Security_Question() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}

@When("^user is trying to submit data without entering 'Security Answer'$")
public void user_is_trying_to_submit_data_without_entering_Security_Answer() throws Throwable {
    // Write code here that turns the phrase above into concrete actions
    throw new PendingException();
}
}