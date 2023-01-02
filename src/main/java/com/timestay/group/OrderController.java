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
@RequestMapping(value="/Order")
@Controller
public class OrderController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/Order.do", method = RequestMethod.GET)
	public String Dessert(Locale locale, Model model,String delivery_fee,String ProductName, String totalSum, int count_product, String Pimage) {
		System.out.println("Pimage:"+Pimage);
		model.addAttribute("Pimage", Pimage);
		 return "Order/Order";
	}
	

}