package com.ims.ch33tz.exception;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalExceptionHandlingController {
	
	private static final Logger logger = Logger.getLogger(GlobalExceptionHandlingController.class.getName());
	
	@ResponseStatus(HttpStatus.NOT_FOUND) 
	@ExceptionHandler(EntityNotFoundException.class)
	public ModelAndView handleEntityNotFoundException(EntityNotFoundException e,
												HttpServletRequest request) {
		logger.info(e.getMessage());
		ModelAndView mav = new ModelAndView();
	    mav.addObject("exception", e);
	    mav.addObject("url", request.getRequestURL());
	    mav.setViewName("not-found");
	    return mav;
	}
	
	@ResponseStatus(HttpStatus.NOT_FOUND) 
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handleNotFoundRequest(NoHandlerFoundException e,
												HttpServletRequest request) {
		logger.info(e.getMessage());
		ModelAndView mav = new ModelAndView();
	    mav.addObject("exception", e);
	    mav.addObject("url", request.getRequestURL());
	    mav.setViewName("not-found");
		return mav;
	}
	
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR) 
	@ExceptionHandler(NumberFormatException.class)
	public ModelAndView handleNumberFormatException(NumberFormatException e,
												HttpServletRequest request) {
		logger.info(e.getMessage());
		ModelAndView mav = new ModelAndView();
	    mav.addObject("exception", e);
	    mav.addObject("url", request.getRequestURL());
	    mav.setViewName("not-found");
		return mav;
	}

}
