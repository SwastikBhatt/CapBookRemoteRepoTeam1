package com.cg.capbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.capbook.beans.Account;



@Controller
public class URIController {
	Account account;
	
	@ModelAttribute
	public Account getAccount() {
		account=new Account();
		return account;
	}
	
	@RequestMapping(value= {"/","index"})
	public String getLoginPage(){
		return "login";
	}
	
	@RequestMapping("/registrationPage")
	public String openRegistrationPage() {
		return "registrationPage";
	}
	
	@RequestMapping("/allSettings")
	public String allSettingsPage() {
		return "allSettingsPage";
	}
	
	@RequestMapping("/resetPasswordPage")
	public String resetPasswordPage() {
		return "resetPasswordPage";
	}
	
	@RequestMapping("/album")
	public String albumPage() {
		return "imageAlbum";
	}
	@RequestMapping("/loginSuccessPage")
	public String loginSuccessPage() {
		return "loginSuccess";
	}

	
	
	
	



	@RequestMapping("/sendReq")
	public String sendFriendRequest() {
		return "sendFriendRequest";
	}
	
	@RequestMapping("/viewApprove")
	public String viewApproveRequest() {
		return "viewAndApprove";
	}
	
	
	
	
	
	
	
	
}
