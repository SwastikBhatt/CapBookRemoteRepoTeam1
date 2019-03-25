package com.cg.capbook.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.capbook.beans.Account;
import com.cg.capbook.daoservices.AccountDAO;
import com.cg.capbook.exceptions.AccountExistingException;
import com.cg.capbook.exceptions.AccountNotFoundException;
import com.cg.capbook.exceptions.ChangePasswordException;
import com.cg.capbook.exceptions.CheckPasswordException;
import com.cg.capbook.exceptions.CheckSecurityQandA;
import com.cg.capbook.exceptions.SecurityProfileQandAException;

@Component("capBookServices")
public class CapBookServicesImpl implements CapBookServices {
	@Autowired
	AccountDAO accountDAO;
	static String sessionEmailId;
	@Override
	public Account openAccount(Account account) throws  AccountExistingException {
		
		List<Account> accountList=accountDAO.findAll();
		for (Account account2 : accountList) {
			if(account2.getEmailId().equals(account.getEmailId()))
				throw new AccountExistingException("Account Already Exists");
		}
		account.setPassword(encryptPassword(account.getPassword()));
		return accountDAO.save(account);
	}
	@Override
	public Account getAccount(String emailId, String password) throws AccountNotFoundException {

		Account account= accountDAO.findById(emailId).orElseThrow(()->new AccountNotFoundException("Invalid emailId"));
		sessionEmailId=account.getEmailId();
		System.out.println(sessionEmailId);
		if (account.getPassword().equals(encryptPassword(password))) {
			return account;
		}
		else {
			throw new AccountNotFoundException("Incorrect Password");
		}
	}
	public String encryptPassword(String password) {
		StringBuffer newPassword= new StringBuffer();
		for(int i=0;i<password.length();i++) 
		{
			newPassword.append((int)password.charAt(i));
		}
		String newPassword1= newPassword.toString() + newPassword.reverse().toString();
		return newPassword1;	
	}
	@Override
	public Account changePassword(String emailId,String securityQuestion,String securityAnswer,String newPass) throws AccountNotFoundException, CheckSecurityQandA, CheckPasswordException {
		Account account= accountDAO.findById(emailId).orElseThrow(()->new AccountNotFoundException("Invalid emailId"));
			if(checkNewWithOld(encryptPassword(newPass), account.getPassword())==false) {
				if(securityQuestion.equals(account.getSecurityQuestion())) {
				if(securityAnswer.equals(account.getSecurityAnswer())) {
					account.setPassword(encryptPassword(newPass)); 
					accountDAO.save(account);
				}
				else
					throw new CheckSecurityQandA("Incorrect Security Answer ");		
			}
			else
				throw new CheckSecurityQandA("Incorrect Security Question ");
		}
		return account;
	}
	@Override
	public Account changePasswordInProfile(String emailId,String securityQuestion,String securityAnswer,String newPass) throws AccountNotFoundException,ChangePasswordException, SecurityProfileQandAException {
		Account account= accountDAO.findById(emailId).orElseThrow(()->new AccountNotFoundException("Invalid emailId"));
			if(checkNewWithOldProfile(encryptPassword(newPass), account.getPassword())==false) {
				if(securityQuestion.equals(account.getSecurityQuestion())) {
				if(securityAnswer.equals(account.getSecurityAnswer())) {
					account.setPassword(encryptPassword(newPass)); 
					accountDAO.save(account);
				}
				else
					throw new SecurityProfileQandAException("Incorrect Security Answer ");		
			}
			else
				throw new SecurityProfileQandAException("Incorrect Security Question ");
		}
		return account;
	}
	@Override
	public boolean checkNewPass(String newPass, String rNewPass) throws CheckPasswordException {
		if(newPass.equals(rNewPass))
			return true;
		throw new CheckPasswordException("Passwords don't match");
	}
	@Override
	public boolean checkNewPassProfile(String newPass, String rNewPass) throws ChangePasswordException{
		if(newPass.equals(rNewPass))
			return true;
		throw new ChangePasswordException("Passwords don't match");
	}
	@Override
	public boolean checkNewWithOld(String newPass, String oldPass) throws CheckPasswordException {
		if(newPass.equals(oldPass))
			throw new CheckPasswordException("New Password Is Same as Previous One");
		return false;
	}
	@Override
	public boolean checkNewWithOldProfile(String newPass, String oldPass) throws ChangePasswordException  {
		if(newPass.equals(oldPass))
			throw new ChangePasswordException("New Password Is Same as Previous One");
		return false;
	}
public Account updateProfile(Account profile) throws AccountNotFoundException {
	System.out.println(sessionEmailId);	
	Account profile1=accountDAO.findById(sessionEmailId).orElseThrow(()->new AccountNotFoundException());
	System.out.println(profile1.getCountry());
	if(!profile.getDesignation().isEmpty())
		profile1.setDesignation(profile.getDesignation());
	if(!profile.getRelationshipStatus().isEmpty())
		profile1.setRelationshipStatus(profile.getRelationshipStatus());
	if(!profile.getUserBio().isEmpty())
		profile1.setUserBio(profile.getUserBio());
	if(!profile.getCurrentCity().isEmpty())
		profile1.setCurrentCity(profile.getCurrentCity());
	return accountDAO.save(profile1);
	}
}
