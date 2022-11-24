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
@RequestMapping(value="/Shopping")
@Controller
public class ShoppingController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/About_us.do", method = RequestMethod.GET)
	public String About_us(Locale locale, Model model) {
		
		
		return "About/About_us";
	}
	
	@RequestMapping(value = "/Location.do", method = RequestMethod.GET)
	public String Location(Locale locale, Model model) {
		
		
		return "About/Location";
	}
	
	@RequestMapping(value = "/Gallery.do", method = RequestMethod.GET)
	public String Gallery(Locale locale, Model model) {
		
		
		return "About/Gallery";
	}
	
}
