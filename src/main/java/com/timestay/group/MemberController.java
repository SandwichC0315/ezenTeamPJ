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
@RequestMapping(value="/Member")
@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/Login.do", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) {
		
		
		return "Member/MemberLogin";
	}
	
	@RequestMapping(value = "/find_ID.do", method = RequestMethod.GET)
	public String find_ID(Locale locale, Model model) {
		
		
		return "Member/MemberFindId";
	}
	
	@RequestMapping(value = "/find_PW.do", method = RequestMethod.GET)
	public String find_PW(Locale locale, Model model) {
		
		
		return "Member/MemberFindPW";
	}
	
	@RequestMapping(value = "/find_PW2.do", method = RequestMethod.GET)
	public String find_PW2(Locale locale, Model model) {
		
		
		return "Member/MemberFindPW2";
	}
	
	@RequestMapping(value = "/signup1.do", method = RequestMethod.GET)
	public String signup1(Locale locale, Model model) {
		
		
		return "Member/MemberSignUp1";
	}
	
	@RequestMapping(value = "/signup2.do", method = RequestMethod.GET)
	public String signup2(Locale locale, Model model) {
		
		
		return "Member/MemberSignUp2";
	}
	
	@RequestMapping(value = "/signup3.do", method = RequestMethod.GET)
	public String signup3(Locale locale, Model model) {
		
		
		return "Member/MemberSignUp3";
	}
	
}
