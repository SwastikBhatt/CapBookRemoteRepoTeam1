package com.cg.capbook.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.capbook.beans.Account;
import com.cg.capbook.exceptions.AccountExistingException;
import com.cg.capbook.exceptions.AccountNotFoundException;
import com.cg.capbook.exceptions.ChangePasswordException;
import com.cg.capbook.exceptions.CheckPasswordException;
import com.cg.capbook.exceptions.CheckSecurityQandA;
import com.cg.capbook.exceptions.SecurityProfileQandAException;
import com.cg.capbook.services.CapBookServices;

@Controller
public class CapBookServicesController {
	@Autowired
	CapBookServices services;

	@RequestMapping("/registerSuccess")
	public ModelAndView openAccount(Account account) throws AccountExistingException{
		account = services.openAccount(account);
		return new ModelAndView("registrationSuccessPage","account",account);
	}


	@RequestMapping("/homepageURI")
	public ModelAndView login(@RequestParam String emailId,String password) throws AccountNotFoundException {
		Account account = services.getAccount(emailId,password);
		if(account!=null)
			return new ModelAndView("loginSuccess","account",account);
		else
			return new ModelAndView("login","account",account);
	}

	@RequestMapping("/changePassword")
	public ModelAndView changePassword(@RequestParam String emailId,String securityQuestion,String securityAnswer,String newPass,String rNewPass) throws AccountNotFoundException, CheckPasswordException, CheckSecurityQandA {
		if(services.checkNewPass(newPass, rNewPass)) {
			Account account = services.changePassword(emailId, securityQuestion, securityAnswer,newPass);
			if(account!=null)
				return new ModelAndView("loginSuccess","account",account);
			else
				return new ModelAndView("resetPasswordPage");
		}
		throw new CheckPasswordException("Passwords don't match"); 
	}
	
//	@RequestMapping("/postingComment")
//	public ModelAndView postingCommentInProfile(Account account) throws AccountNotFoundException, CheckPasswordException, ChangePasswordException, SecurityProfileQandAException {
//		if(services.checkNewPassProfile(newPass, rNewPass)) {
//			Account account = services.changePasswordInProfile(emailId, securityQuestion, securityAnswer,newPass);
//			if(account!=null)
//				return new ModelAndView("loginSuccess","account",account);
//			else {
//				return new ModelAndView("allSettingsPage");
//			}
//		}
//		throw new ChangePasswordException("Passwords don't match"); 
//	}
	@RequestMapping("/changePasswordProfile")
	public ModelAndView changePasswordProfile(@RequestParam String emailId,String securityQuestion,String securityAnswer,String newPass,String rNewPass) throws AccountNotFoundException, CheckPasswordException, ChangePasswordException, SecurityProfileQandAException {
		if(services.checkNewPassProfile(newPass, rNewPass)) {
			Account account = services.changePasswordInProfile(emailId, securityQuestion, securityAnswer,newPass);
			if(account!=null)
				return new ModelAndView("loginSuccess","account",account);
			else {
				return new ModelAndView("allSettingsPage");
			}
		}
		throw new ChangePasswordException("Passwords don't match"); 
	}
	@RequestMapping("/updateProfile")
	public ModelAndView updateProfile(@ModelAttribute Account account) throws AccountNotFoundException  {
		
		Account account1=services.updateProfile(account);
		return new ModelAndView("allSettingsPage","account1",account1);
		
	}

}