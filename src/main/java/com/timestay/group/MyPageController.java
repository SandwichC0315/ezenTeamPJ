package com.timestay.group;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.timestay.vo.MemberVO;
import com.timestay.vo.ProductVO;
import com.timestay.vo.ShoppingCartVO;
import com.timestay.service.MyPageService;


/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/MyPage")
@Controller
public class MyPageController {
	
	@Autowired
	MyPageService MyPageService;
	
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
	public String MyPageShoppingCart(Locale locale, Model model,HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");
//		ShoppingCartVO Svo = new ShoppingCartVO();  
		int Midx=login.getMidx();
		List<ShoppingCartVO> Svo =MyPageService.ShoppingList(Midx);
//		ProductVO vo =  new ProductVO();
//		model.addAttribute("vo", vo);		
		model.addAttribute("Svo", Svo);
		return "MyPage/MyPageShoppingCart";
	}


	@ResponseBody//ajax 사용시 리턴값을 응답데이터로 만드는 어노테이션
	@RequestMapping(value="/ShoppingCart.do")
	public int ShoppingCart(HttpServletRequest req,int Pidx, int Svol) {
		//insert 구문 작성
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");
		ShoppingCartVO Svo = new ShoppingCartVO();  
		Svo.setMidx(login.getMidx());
		Svo.setPidx(Pidx);
		Svo.setSvol(Svol);
		System.out.println("Svo:"+Svo.toString());
		int result=MyPageService.ShoppingCart(Svo);//+ Midx 넘겨야함 vo에 다 담아서 넘기는건가
		return result; //0,1인가?
	}
}	

