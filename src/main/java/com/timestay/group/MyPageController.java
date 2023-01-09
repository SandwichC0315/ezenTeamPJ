                                                                  package com.timestay.group;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		
		MemberVO mv = MemberService.selectOneByMid(vo);

		model.addAttribute("mv", mv);
		model.addAttribute("Mid", mv.getMid());
		model.addAttribute("Mpwd", mv.getMpwd());
		model.addAttribute("Mname", mv.getMname());
		model.addAttribute("Mphone", mv.getMphone());
		model.addAttribute("Memail", mv.getMemail());
		model.addAttribute("Madd", mv.getMadd());
		model.addAttribute("Madd2", mv.getMadd2());
		model.addAttribute("Madd3", mv.getMadd3());
		model.addAttribute("Mmdate", mv.getMmdate());
		
		return "MyPage/member_Modify";
	}
	
	@RequestMapping(value = "/member_Modify.do", method = RequestMethod.POST)
	public String modifyFaq(MemberVO vo, HttpServletResponse res) {
		
		//db ¼öÁ¤Ã³¸®
		int result = MemberService.modify(vo);		
		
		return "redirect:../";
	}
	
	// È¸¿ø Å»Åð get
		@RequestMapping(value="/member_Delete.do", method = RequestMethod.GET)
		public String memberDelete(MemberVO vo,Model model) throws Exception{
			MemberVO mv = MemberService.selectOneByMid(vo);

			model.addAttribute("mv", mv);
			model.addAttribute("Mid", mv.getMid());
			model.addAttribute("Mpwd", mv.getMpwd());
			model.addAttribute("Mname", mv.getMname());
			
			return "/MyPage/member_Delete";
		}
		
		// È¸¿ø Å»Åð post
		@RequestMapping(value="/member_Delete.do", method = RequestMethod.POST)
		public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr,Model model) throws Exception{
			
			//db ¼öÁ¤Ã³¸®
			int result = MemberService.memberDelete(vo);	
			session.invalidate();
			
			return "redirect:/Member/Login.do";
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
