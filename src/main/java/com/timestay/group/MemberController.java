package com.timestay.group;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.context.annotation.Configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.timestay.service.MemberService;
import com.timestay.vo.MailUtil;
import com.timestay.vo.MemberVO;


/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/Member")
@Controller
public class MemberController {
	@Autowired
	private MemberService MemberService;
	//com.timestay.service.MemberService -->MemberService�� �ٲٴ°� �� ..


	@RequestMapping(value = "/Login.do", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) {
		
		
		return "Member/MemberLogin";
	}
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req) {
		System.out.println("vo:"+vo.getMid());
		System.out.println("ser:" + MemberService);
		HttpSession session = req.getSession();
		
		//login ó��
		
		MemberVO loginVO = MemberService.findMemberByIdPass(vo);
		System.out.println("loginVO"+MemberService.findMemberByIdPass(vo));
		
		if(loginVO != null) {
			session.setAttribute("login", loginVO);
			session.setAttribute("Mid", vo.getMid());
		}
		return "redirect:/About/About_us.do";
	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpServletRequest req) {
	HttpSession session =req.getSession();
	session.invalidate();//�������� �ʱ�ȭ (������ ��Ҵ� ���� ������� ��)
	return "redirect:/About/About_us.do";
}
	@RequestMapping(value = "/find_ID.do", method = RequestMethod.GET)
	public String find_ID(MemberVO vo,Model model) {
		
		
		return "Member/MemberFindId";
	}
	
	@RequestMapping(value = "/find_ID.do", method = RequestMethod.POST)
	public String modifyFaq(MemberVO vo, Model model) {
		
		MemberVO user = MemberService.findId(vo);

		if(user == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("Mid", user.getMid());
		}
		
		return "Member/MemberFindId";
	}
	
	@RequestMapping(value = "/find_PW.do", method = RequestMethod.GET)
	public String find_PW(Locale locale, Model model) {
		
		
		return "Member/MemberFindPW";
	}
	
	@RequestMapping(value = "/find_PW.do",produces = {MediaType.APPLICATION_JSON_VALUE})
	public @ResponseBody String findPw(MemberVO vo) throws Exception {
		BCryptPasswordEncoder encoder= new BCryptPasswordEncoder();
		String result=null;
		
		//ȸ������ �ҷ�����
		MemberVO vo1 = MemberService.findPw(vo);
		System.out.println(vo1);
		
		//���Ե� �̸����� �����Ѵٸ� �̸��� ����
		if(vo1!=null) {
			
			//�ӽ� ��й�ȣ ����(UUID�̿�)
			String tempPw=UUID.randomUUID().toString().replace("-", "");//-�� ����
			tempPw = tempPw.substring(0,10);//tempPw�� �տ������� 10�ڸ� �߶���
			
			vo1.setMpwd(tempPw);//�ӽ� ��й�ȣ ���
	
			MailUtil mail=new MailUtil(); //���� �����ϱ�
			mail.sendEmail(vo1);
			
			MemberService.updatePw(vo1);
			
			String securePw = encoder.encode(vo1.getMpwd());//ȸ�� ��й�ȣ�� ��ȣȭ�ϸ� vo��ü�� �ٽ� ����
			vo1.setMpwd(securePw);
				
			result="true";
			
		}else {
			result="false";
		}
		
		return result;
		
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
	
	@RequestMapping(value="/signup2.do", method = RequestMethod.POST)
	public String signup2(MemberVO vo) {
		
		int result = MemberService.signUp(vo);
		
		return "redirect:/Member/signup3.do";
	}
	
	@ResponseBody
	@RequestMapping(value="/idCheck", method = RequestMethod.POST)
	public int idCheck(HttpServletRequest req) throws Exception {
		
		String Mid = req.getParameter("Mid");
		MemberVO idCheck = MemberService.idCheck(Mid);
		
		int result = 0;
		
		if(idCheck != null) {
			result = 1;
		}
	
		return result;
	}
	
	@RequestMapping(value = "/signup3.do", method = RequestMethod.GET)
	public String signup3(Locale locale, Model model) {
		
		
		return "Member/MemberSignUp3";
	}
	
}
