package com.cg.capbook.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.capbook.beans.Account;
import com.cg.capbook.exceptions.AccountNotFoundException;
import com.cg.capbook.services.CapBookServices;

@Controller
public class CapBookServicesController {
	@Autowired
	CapBookServices services;
	
	@RequestMapping("/registerSuccess")
	public ModelAndView openAccount(Account account) {
		account = services.openAccount(account);
		return new ModelAndView("registrationSuccessPage","account",account);
	}
	
	
	@RequestMapping("/homepageURI")
	public ModelAndView login(@RequestParam int employeeId,String password) throws AccountNotFoundException {
		Account account = services.getAccount(employeeId,password);
		if(account!=null)
			return new ModelAndView("loginSuccess","account",account);
		else
			return new ModelAndView("login","account",account);
	}
	
//	@RequestMapping("/accountDetails")
//	public ModelAndView accountDetails(@RequestParam int accountNo)throws AccountNotFoundException {
//		Account account=bankingServices.getAccountDetails(accountNo);
//		return new ModelAndView("checkDetailsPage","account",account);
//	}
//	
//	@RequestMapping("/depositAccount")
//	public ModelAndView depositAccount(@RequestParam int accountNo,int amount)throws AccountNotFoundException {
//		Float accountBal=bankingServices.depositAmount(accountNo,amount);
//		return new ModelAndView("depositAccountPage","accountBal",accountBal);
//	}
//	
//	@RequestMapping("/withdrawAccount")
//	public ModelAndView withdrawAccount(@RequestParam int accountNo,int amount,int pin)throws AccountNotFoundException {
//		Float accountBal=bankingServices.withdrawAmount(accountNo,amount,pin);
//		return new ModelAndView("withdrawAccountPage","accountBal",accountBal);
//	}
//	
//	@RequestMapping("/associateAllDetails")
//	public ModelAndView getAllAssociateDetails()throws BankingServicesDownException{
//		List<Account> accountList = bankingServices.getAllAccountDetails();
//		return new ModelAndView("getAllAccountPage","accountList",accountList);
//	}
//	
//	@RequestMapping("/transactionAllDetails")
//	public ModelAndView transactionAllDetails(@RequestParam int accountNo)throws BankingServicesDownException{
//		List<Transaction> transactionList = bankingServices.getAccountAllTransaction(accountNo);
//		return new ModelAndView("getAllTransactionPage","transactionList",transactionList);
//	}
}
