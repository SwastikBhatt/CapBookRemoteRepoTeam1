package com.cg.capbook.services;

import com.cg.capbook.beans.Account;
import com.cg.capbook.exceptions.AccountNotFoundException;

public interface CapBookServices {

	Account openAccount(Account account);
	public String encryptPassword(String password);
	Account getAccount(int employeeId,String password) throws AccountNotFoundException;
	
	

}
