                                                                  package com.timestay.group;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.timestay.service.MemberService;
import com.timestay.vo.BoardFaqVO;
import com.timestay.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/MyPage")
@Controller
public class MyPageController {
	
	@Autowired
	private MemberService MemberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/member_Modify.do", method = RequestMethod.GET)
	public String member_Modify(MemberVO vo,Model model) {
		
		MemberVO mv = MemberService.selectOneByMidx(vo);

		model.addAttribute("mv", mv);
		model.addAttribute("Mid", mv.getMid());
		model.addAttribute("Mpwd", mv.getMpwd());
		model.addAttribute("Mname", mv.getMname());
		model.addAttribute("Mphone", mv.getMphone());
		model.addAttribute("Madd", mv.getMadd());
		model.addAttribute("Mmdate", mv.getMmdate());
		
		return "MyPage/member_Modify";
	}
	
	@RequestMapping(value = "/member_Modify.do", method = RequestMethod.POST)
	public String modifyFaq(MemberVO vo, HttpServletResponse res) {
		
		//db 수정처리
		int result = MemberService.modify(vo);		
		
		return "redirect:../";
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
	public String MyPageShoppingCart(Locale locale, Model model) {

		return "MyPage/MyPageShoppingCart";
	}

}
