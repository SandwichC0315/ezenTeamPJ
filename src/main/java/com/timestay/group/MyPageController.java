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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.timestay.service.MemberService;
import com.timestay.vo.BoardFaqVO;
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
		List<ShoppingCartVO> Svo =MyPageService.ShoppingList(Midx);//�ش� midx�� ��ٱ��� ����Ʈ �Ѹ���
//		ProductVO vo =  new ProductVO();
//		model.addAttribute("vo", vo);

		System.out.println("Svo123123"+Svo);
		model.addAttribute("Svo", Svo);

		return "MyPage/MyPageShoppingCart";
	}


	@ResponseBody//ajax ���� ���ϰ��� ���䵥���ͷ� ����� ������̼�
	@RequestMapping(value="/ShoppingCart.do")// ajax�� ��ٱ��� ���
	public int ShoppingCart(HttpServletRequest req,int Pidx, int Svol) {
		//insert ���� �ۼ�
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");
		ShoppingCartVO Svo = new ShoppingCartVO();  
		Svo.setMidx(login.getMidx());
		Svo.setPidx(Pidx);
		Svo.setSvol(Svol);
		Svo.setSidx(Svo.getSidx());
		System.out.println("Svo:"+Svo.toString());
		int result=MyPageService.ShoppingCart(Svo);//+ Midx �Ѱܾ��� vo�� �� ��Ƽ� �ѱ�°ǰ�
		return result; //0,1�ΰ�?   Pidx�� ������ ���� �ʵ��� �����غ���
	}
	@RequestMapping(value="/ShoppingCartDelete.do")// ajax�� ��ٱ��� ���
	public String ShoppingCartDelete(HttpServletRequest req,int Sidx) {
		System.out.println("Sidx:"+Sidx);
		int result= MyPageService.ShoppingCartDelete(Sidx);
		System.out.println("result:"+result);
		return "redirect:MyPageShoppingCart.do"; //0,1�ΰ�?
	}
	@RequestMapping(value="/ShoppingCartModify.do")// ajax�� ��ٱ��� ���
	public String ShoppingCartModify(HttpServletRequest req,ShoppingCartVO Svo) {
		System.out.println("Svo:"+Svo);
		int result= MyPageService.ShoppingCartModify(Svo);
		System.out.println("result:"+result);
		return "redirect:MyPageShoppingCart.do"; 
	}

	@RequestMapping(value="/ShoppingCartBuy.do",  method = RequestMethod.POST)
	public String ShoppingCartBuy(Locale locale, Model model,String Ptitle,HttpServletRequest req,
			HttpServletResponse response,int[] pidxList, String delivery , int[] totalSumList) {
	//	System.out.println("pidxList:"+pidxList[0]);
		System.out.println("delivery:"+delivery);
		System.out.println("totalSumList:"+totalSumList[1]);
		ShoppingCartVO Svo =new ShoppingCartVO();
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");
		int Midx = login.getMidx();
		Svo.setMidx(login.getMidx());
		Svo.setPidxList(pidxList);
		MemberVO mvo = MyPageService.selectUser(login.getMidx());
		List<ShoppingCartVO> svoChecked =  MyPageService.ShoppingCartPidx(Svo);
		System.out.println("SvoChecked:"+svoChecked);
		model.addAttribute("svoChecked",svoChecked);
		model.addAttribute("mvo", mvo);
	    return  "Shopping/ShoppingOrder";
	}
	@ResponseBody
	@RequestMapping(value="/selectUser.do")
	public MemberVO selectUser(HttpServletRequest req) {
		//insert ���� �ۼ�
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");

		MemberVO result=MyPageService.selectUser(login.getMidx());
		return result; 
	}
}	

