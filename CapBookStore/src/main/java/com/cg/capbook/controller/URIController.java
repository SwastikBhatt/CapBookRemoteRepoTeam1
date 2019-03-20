package com.cg.capbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.capbook.beans.Account;



@Controller
public class URIController {
	Account account;
	
	@RequestMapping(value= {"/","index"})
	public String getLoginPage(){
		return "login";
	}
	
	@RequestMapping("/registrationPage")
	public String openRegistrationPage() {
		return "registrationPage";
	}
	
	@RequestMapping("/depositAcc")
	public String depositAccountPage() {
		return "depositAccountPage";
	}
	
	@RequestMapping("/withdrawAcc")
	public String withdrawAccountPage() {
		return "withdrawAccountPage";
	}
	
	@RequestMapping("/transferAcc")
	public String transferAccountPage() {
		return "transferAccountPage";
	}
	
	@RequestMapping("/checkDet")
	public String checkDetailsPage() {
		return "checkDetailsPage";
	}
	
	@RequestMapping("/getAllAcc")
	public String getAllAccountPage() {
		return "getAllAccountPage";
	}
	
	@RequestMapping("/getAllTran")
	public String getAllTransactionPage() {
		return "getAllTransactionPage";
	}
	@ModelAttribute
	public Account getAccount() {
		account=new Account();
		return account;
	}
}