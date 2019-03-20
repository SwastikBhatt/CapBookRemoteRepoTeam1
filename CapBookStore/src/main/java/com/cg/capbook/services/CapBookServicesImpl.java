package com.cg.capbook.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.capbook.beans.Account;
import com.cg.capbook.daoservices.AccountDAO;
import com.cg.capbook.exceptions.AccountNotFoundException;

@Component("capBookServices")
public class CapBookServicesImpl implements CapBookServices {
	@Autowired
	AccountDAO accountDAO;
	@Override
	public Account openAccount(Account account) {
		account.setPassword(encryptPassword(account.getPassword()));
		return accountDAO.save(account);
	}
	@Override
	public Account getAccount(int employeeId, String password) throws AccountNotFoundException {

		Account account= accountDAO.findById(employeeId).orElseThrow(()->new AccountNotFoundException("Invalid EmployeeId"));
		if (account.getPassword().equals(encryptPassword(password))) {
			System.out.println("HAHAHA");
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

}
