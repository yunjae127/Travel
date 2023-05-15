package com.travel.exception; 

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice("com.travel")
public class ProjectExceptionHandler {
 
	// 예외 처리
	@ExceptionHandler(Exception.class)
	public String handleException(Exception e,Model m) {
		
		m.addAttribute("exception",e);
		
		return "error/TransErrorPage";
	}
	
}
