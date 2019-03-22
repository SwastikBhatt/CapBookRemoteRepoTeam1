package com.cg.capbook.services;

import com.cg.capbook.beans.Account;
import com.cg.capbook.exceptions.AccountExistingException;
import com.cg.capbook.exceptions.AccountNotFoundException;
import com.cg.capbook.exceptions.ChangePasswordException;
import com.cg.capbook.exceptions.CheckPasswordException;
import com.cg.capbook.exceptions.CheckSecurityQandA;
import com.cg.capbook.exceptions.SecurityProfileQandAException;

public interface CapBookServices {

	Account openAccount(Account account) throws AccountExistingException;
	public String encryptPassword(String password);
	Account getAccount(String emailId,String password) throws AccountNotFoundException;
	Account changePassword(String emailId,String securityQuestion,String securityAnswer, String newPass) throws AccountNotFoundException, CheckSecurityQandA, CheckPasswordException;
	boolean checkNewPass(String newPass,String rNewPass) throws CheckPasswordException;
	boolean checkNewWithOld(String newPass, String oldPass) throws CheckPasswordException;
	public boolean checkNewPassProfile(String newPass, String rNewPass) throws ChangePasswordException;
	Account changePasswordInProfile(String emailId, String securityQuestion, String securityAnswer, String newPass)
			throws AccountNotFoundException, ChangePasswordException, SecurityProfileQandAException;
	public boolean checkNewWithOldProfile(String newPass, String oldPass) throws ChangePasswordException;
}
