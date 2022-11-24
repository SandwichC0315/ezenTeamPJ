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
@RequestMapping(value="/Board")
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/BoardNotice.do", method = RequestMethod.GET)
	public String notice() {
		
		return "Board/BoardNotice";
	}
	
	@RequestMapping(value = "/BoardFaq.do", method = RequestMethod.GET)
	public String faq() {
		
		return "Board/BoardFaq";
	}
	
	@RequestMapping(value = "/BoardQna.do", method = RequestMethod.GET)
	public String qna() {
		
		return "Board/BoardQna";
	}
	
	
	
	
}
