package com.timestay.group;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/Login/Login.do", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) {
		
		
		return "Login/Login";
	}
	
	@RequestMapping(value = "/Login/find_ID.do", method = RequestMethod.GET)
	public String find_ID(Locale locale, Model model) {
		
		
		return "Login/find_ID";
	}
	
	@RequestMapping(value = "/Login/find_PW.do", method = RequestMethod.GET)
	public String find_PW(Locale locale, Model model) {
		
		
		return "Login/find_PW";
	}
	
	@RequestMapping(value = "/Login/find_PW2.do", method = RequestMethod.GET)
	public String find_PW2(Locale locale, Model model) {
		
		
		return "Login/find_PW2";
	}
	
	@RequestMapping(value = "/SignUp/signup1.do", method = RequestMethod.GET)
	public String signup1(Locale locale, Model model) {
		
		
		return "SignUp/signup1";
	}
	
	@RequestMapping(value = "/SignUp/signup2.do", method = RequestMethod.GET)
	public String signup2(Locale locale, Model model) {
		
		
		return "SignUp/signup2";
	}
	
	@RequestMapping(value = "/SignUp/signup3.do", method = RequestMethod.GET)
	public String signup3(Locale locale, Model model) {
		
		
		return "SignUp/signup3";
	}
	
}
