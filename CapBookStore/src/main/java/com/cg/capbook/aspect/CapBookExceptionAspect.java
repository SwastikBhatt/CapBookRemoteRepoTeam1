package com.cg.capbook.aspect;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.cg.capbook.exceptions.AccountNotFoundException;

@ControllerAdvice
public class CapBookExceptionAspect {

	@ExceptionHandler(AccountNotFoundException.class)
	public ModelAndView handelAccountDetailsNotFoundException(Exception e) {
		return new ModelAndView("login","errorMessage",e.getMessage());
	}
}
