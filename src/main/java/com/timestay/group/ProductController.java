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
@RequestMapping(value="/Product")
@Controller
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/ProductDessert.do", method = RequestMethod.GET)
	public String Dessert(Locale locale, Model model) {

		 return "Product/ProductDessert";
	}
	
	@RequestMapping(value = "/ProductDrink.do", method = RequestMethod.GET)
	public String Drink(Locale locale, Model model) {

		 return "Product/ProductDrink";
}
	
	@RequestMapping(value = "/ProductFood.do", method = RequestMethod.GET)
	public String Food(Locale locale, Model model) {

		 return "Product/ProductFood";
	}
	@RequestMapping(value = "/ProductInfo.do", method = RequestMethod.GET)
	public String ProductInfo(Locale locale, Model model) {

		 return "Product/ProductInfo";
	}
	@RequestMapping(value = "/ProductCoffeeBean.do", method = RequestMethod.GET)
	public String ProductCoffeeBean(Locale locale, Model model) {

		 return "Product/ProductCoffeeBean";
	}
}
