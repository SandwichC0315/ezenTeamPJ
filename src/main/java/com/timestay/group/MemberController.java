package com.timestay.group;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.timestay.service.MemberService;
import com.timestay.vo.MemberVO;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/Member")
@Controller
public class MemberController {
	@Autowired
	private MemberService MemberService;
	//com.timestay.service.MemberService -->MemberService로 바꾸는거 음 ..


	@RequestMapping(value = "/Login.do", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) {
		
		
		return "Member/MemberLogin";
	}
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String login( Model model, MemberVO vo, HttpServletRequest req) {
		System.out.println("vo:"+vo.getMid());
		System.out.println("ser:" + MemberService);
		HttpSession session = req.getSession();
		String ip="";
		try {
			ip=InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}

	

		//login 처리
		
		MemberVO loginVO = MemberService.findMemberByIdPass(vo);
		System.out.println("loginVO"+MemberService.findMemberByIdPass(vo));
		System.out.println(loginVO.toString());
		
		if(loginVO != null) {
			session.setAttribute("login", loginVO);
			session.setAttribute("ip", ip);
			session.setAttribute("Mid", vo.getMid());
			session.setAttribute("Midx", vo.getMidx());
			
	}

        
        System.out.println("IP:"+ip);
		return "redirect:/Product/ProductCoffeeBean.do";
	}
	@RequestMapping(value = "/logout.do")
	public String logout(HttpServletRequest req) {
	HttpSession session =req.getSession();
	session.invalidate();//세션정보 초기화 (세션이 담았던 통을 비워내는 것)
	return "redirect:/About/About_us.do";
}
	@RequestMapping(value = "/find_ID.do", method = RequestMethod.GET)
	public String find_ID(Locale locale, Model model) {
		
		
		return "Member/MemberFindId";
	}
	
	@RequestMapping(value = "/find_PW.do", method = RequestMethod.GET)
	public String find_PW(Locale locale, Model model) {
		
		
		return "Member/MemberFindPW";
	}
	
	@RequestMapping(value = "/find_PW2.do", method = RequestMethod.GET)
	public String find_PW2(Locale locale, Model model) {
		
		
		return "Member/MemberFindPW2";
	}
	
	@RequestMapping(value = "/signup1.do", method = RequestMethod.GET)
	public String signup1(Locale locale, Model model) {
		
		
		return "Member/MemberSignUp1";
	}
	
	@RequestMapping(value = "/signup2.do", method = RequestMethod.GET)
	public String signup2(Locale locale, Model model) {
		
		
		return "Member/MemberSignUp2";
	}
	
	@RequestMapping(value = "/signup3.do", method = RequestMethod.GET)
	public String signup3(Locale locale, Model model) {
		
		
		return "Member/MemberSignUp3";
	}
	
}
