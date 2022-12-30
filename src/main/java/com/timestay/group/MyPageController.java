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
@RequestMapping(value="/MyPage")
@Controller
public class MyPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/member_Modify.do", method = RequestMethod.GET)
	public String member_Modify(Locale locale, Model model) {
		
		
		return "MyPage/member_Modify";
	}
	
	@RequestMapping(value = "/member_Point.do", method = RequestMethod.GET)
	public String member_Point(Locale locale, Model model) {
		
		
		return "MyPage/member_Point";
	}
	
	@RequestMapping(value = "/member_QA.do", method = RequestMethod.GET)
	public String member_QA(Locale locale, Model model) {
		
		
		return "MyPage/member_QA";
	}

	@RequestMapping(value = "/MyPageOrderView.do", method = RequestMethod.GET)
	public String MyPageOrderView(Locale locale, Model model) {

		return "MyPage/MyPageOrderView";
	}



	@RequestMapping(value = "/MyPageShoppingCart.do", method = RequestMethod.GET)
	public String Order(Locale locale, Model model,String ProductName,HttpServletRequest req,HttpServletResponse response,
			int totalSum, int count_product, String Pimage, String delivery) {
		//파라메터로 받은것은 구지 모델로 안담아도 된다. 파라메터를 가지고 그와 같은 번호의 midx를 뽑는다 이럴 때만 담는거
//		System.out.println("delivery_fee:"+delivery_fee);
		System.out.println("Pimage:"+Pimage);
		System.out.println("ProductName:"+ProductName);
		System.out.println("totalSum:"+totalSum);
		System.out.println("delivery:"+delivery);
		 HttpSession session = req.getSession();
	    MemberVO login = (MemberVO)session.getAttribute("login");

		

	    return "Mypage/MyPageShoppingCart";
	}
}	

