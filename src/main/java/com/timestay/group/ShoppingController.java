package com.timestay.group;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.timestay.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/Shopping")
@Controller
public class ShoppingController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/ShoppingOrder.do", method = RequestMethod.GET)
	public String Order(Locale locale, Model model,int delivery_fee,String ProductName,HttpServletRequest req,HttpServletResponse response,
			int totalSum, int Svol, String Pimage, String delivery) {
		//�Ķ���ͷ� �������� ���� �𵨷� �ȴ�Ƶ� �ȴ�. �Ķ���͸� ������ �׿� ���� ��ȣ�� midx�� �̴´� �̷� ���� ��°�
//		System.out.println("delivery_fee:"+delivery_fee);
//		System.out.println("Pimage:"+Pimage);
//		System.out.println("ProductName:"+ProductName);
//		System.out.println("totalSum:"+totalSum);
//		System.out.println("delivery:"+delivery);
		 HttpSession session = req.getSession();
	    MemberVO login = (MemberVO)session.getAttribute("login");

		 return "Shopping/ShoppingOrder";
	}
}
