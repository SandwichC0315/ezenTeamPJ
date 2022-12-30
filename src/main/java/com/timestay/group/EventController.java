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
@RequestMapping(value="/Event")
@Controller
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/EventNowEvent.do", method = RequestMethod.GET)
	public String EventNowEvent(Locale locale, Model model) {

		return "Event/EventNowEvent";
	}

	@RequestMapping(value = "/EventNowDetalis1.do", method = RequestMethod.GET)
	public String EventNowDetalis1(Locale locale, Model model) {

		return "Event/EventNowDetalis1";
	}

	@RequestMapping(value = "/EventNowDetalis2.do", method = RequestMethod.GET)
	public String EventNowDetalis2(Locale locale, Model model) {

		return "Event/EventNowDetalis2";
	}

	@RequestMapping(value = "/EventNowDetalis3.do", method = RequestMethod.GET)
	public String EventNowDetalis3(Locale locale, Model model) {

		return "Event/EventNowDetalis3";
	}

	@RequestMapping(value = "/EventEndEvent.do", method = RequestMethod.GET)
	public String EventEndEvent(Locale locale, Model model) {

		return "Event/EventEndEvent";
	}

	@RequestMapping(value = "/EventEndDetalis1.do", method = RequestMethod.GET)
	public String EventEndDetalis1(Locale locale, Model model) {

		return "Event/EventEndDetalis1";
	}

	@RequestMapping(value = "/EventEndDetalis2.do", method = RequestMethod.GET)
	public String EventEndDetalis2(Locale locale, Model model) {

		return "Event/EventEndDetalis2";
	}

	@RequestMapping(value = "/EventEndDetalis3.do", method = RequestMethod.GET)
	public String EventEndDetalis3(Locale locale, Model model) {

		return "Event/EventEndDetalis3";
	}
	
}
