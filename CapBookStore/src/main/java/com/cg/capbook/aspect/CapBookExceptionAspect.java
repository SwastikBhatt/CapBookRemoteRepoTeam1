package com.cg.capbook.aspect;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.cg.capbook.exceptions.AccountExistingException;
import com.cg.capbook.exceptions.AccountNotFoundException;
import com.cg.capbook.exceptions.ChangePasswordException;
import com.cg.capbook.exceptions.CheckPasswordException;
import com.cg.capbook.exceptions.CheckSecurityQandA;
import com.cg.capbook.exceptions.LoggedOutException;
import com.cg.capbook.exceptions.SecurityProfileQandAException;

@ControllerAdvice
public class CapBookExceptionAspect {
	@ExceptionHandler(AccountExistingException.class)
	public ModelAndView handelAccountExistingException(Exception e) {
		return new ModelAndView("registrationPage","errorMessage",e.getMessage());
	}
	@ExceptionHandler(AccountNotFoundException.class)
	public ModelAndView handelAccountDetailsNotFoundException(Exception e) {
		return new ModelAndView("login","errorMessage",e.getMessage());
	}
	@ExceptionHandler(CheckPasswordException.class)
	public ModelAndView handelCheckPasswordException(Exception e) {
		return new ModelAndView("resetPasswordPage","errorMessage",e.getMessage());
	}
	@ExceptionHandler(CheckSecurityQandA.class)
	public ModelAndView handelCheckSecurityQandA(Exception e) {
		return new ModelAndView("resetPasswordPage","errorMessage",e.getMessage());
	}
	@ExceptionHandler(ChangePasswordException.class)
	public ModelAndView handelChangePasswordException(Exception e) {
		return new ModelAndView("allSettingsPage","errorMessage",e.getMessage());
	}
	@ExceptionHandler(SecurityProfileQandAException.class)
	public ModelAndView handelSecurityProfileQandAException(Exception e) {
		return new ModelAndView("allSettingsPage","errorMessage",e.getMessage());
	}
	@ExceptionHandler(LoggedOutException.class)
	public ModelAndView handelLoggedOutException(Exception e) {
		return new ModelAndView("login","errorMessage",e.getMessage());
	}
}
