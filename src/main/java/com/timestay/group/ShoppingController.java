package com.timestay.group;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.timestay.service.ShoppingService;
import com.timestay.vo.MemberVO;
import com.timestay.vo.ShoppingCartVO;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/Shopping")
@Controller
public class ShoppingController {
	
	@Autowired
	ShoppingService ShoppingService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/ShoppingOrderView.do", method = RequestMethod.GET)
	public void ShoppingOrderView(Locale locale, Model model, HttpServletResponse res) throws Exception {
		
		res.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pw = res.getWriter();

			pw.append("<script>alert('준비중입니다!');location.href='javascript:history.back();'</script>");
			
			pw.flush();
			pw.close();
		
	}
	@RequestMapping(value = "/ShoppingCart.do", method = RequestMethod.GET)
	public String ShoppingCart(Locale locale, Model model,HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");
//		ShoppingCartVO Svo = new ShoppingCartVO();  
		int Midx=login.getMidx();
		List<ShoppingCartVO> Svo =ShoppingService.ShoppingList(Midx);//�ش� midx�� ��ٱ��� ����Ʈ �Ѹ���
//		ProductVO vo =  new ProductVO();
//		model.addAttribute("vo", vo);

		System.out.println("Svo123123"+Svo);
		model.addAttribute("Svo", Svo);

		return "Shopping/ShoppingCart";
	}


	@ResponseBody//ajax ���� ���ϰ��� ���䵥���ͷ� ����� ������̼�
	@RequestMapping(value="/ShoppingCartAjax.do")// ajax�� ��ٱ��� ���
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
		int result=ShoppingService.ShoppingCart(Svo);//+ Midx �Ѱܾ��� vo�� �� ��Ƽ� �ѱ�°ǰ�
		return result; //0,1�ΰ�?   Pidx�� ������ ���� �ʵ��� �����غ���
	}
	@RequestMapping(value="/ShoppingCartDelete.do")// ajax�� ��ٱ��� ���
	public String ShoppingCartDelete(HttpServletRequest req,int Sidx) {
		System.out.println("Sidx:"+Sidx);
		int result= ShoppingService.ShoppingCartDelete(Sidx);
		System.out.println("result:"+result);
		return "redirect:ShoppingCart.do"; //0,1�ΰ�?
	}
	@RequestMapping(value="/ShoppingCartModify.do",method = RequestMethod.POST)// ajax�� ��ٱ��� ���
	public String ShoppingCartModify(HttpServletRequest req,ShoppingCartVO Svo,int Svol,int Sidx) {
		System.out.println("Sidx:"+Sidx);
		System.out.println("Svol:"+Svol);
		System.out.println("Svo:"+Svo);
		int result= ShoppingService.ShoppingCartModify(Svo);
		System.out.println("result:"+result);
		return "redirect:ShoppingCart.do"; 
	}

	@RequestMapping(value="/ShoppingCartBuy.do",  method = RequestMethod.POST)
	public String ShoppingCartBuy(Locale locale, Model model,String Ptitle,HttpServletRequest req,
			HttpServletResponse response,int[] pidxList, String delivery , int[] totalSumList) throws IOException {
	//	System.out.println("pidxList:"+pidxList[0]);
		PrintWriter out = response.getWriter();
		if(pidxList==null) {
			 response.setContentType("text/html;charset=UTF-8");
			System.out.println("pidxList:"+pidxList);
			//out.println("<script>alert('상품을 선택해 주세요'); </script>");
			out.append("<script>alert('선택된 상품이 존재하지 않습니다.');location.href='ShoppingCart.do' </script>");
			out.flush();
			//return "redirect:ShoppingCart.do";
		}
		System.out.println("delivery:"+delivery);
		ShoppingCartVO Svo =new ShoppingCartVO();
		Svo.setPidxList(pidxList);
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");
		Svo.setMidx(login.getMidx());
		List<ShoppingCartVO> svoChecked =  ShoppingService.ShoppingCartPidx(Svo);
		System.out.println("SvoChecked:"+svoChecked);
		model.addAttribute("svoChecked",svoChecked);
		MemberVO mvo=ShoppingService.selectUser(login.getMidx());
		model.addAttribute("mvo", mvo);
		System.out.println("mvo:"+mvo);

	    return  "Shopping/ShoppingOrder";
	}
	@ResponseBody
	@RequestMapping(value="/selectUser.do")
	public MemberVO selectUser(HttpServletRequest req) {
		//insert ���� �ۼ�
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");

		MemberVO result=ShoppingService.selectUser(login.getMidx());
		return result; 
	}
	@RequestMapping(value="/ShoppingOrder2.do")
	public String ShoppingOrder(Locale locale, Model model,String Ptitle,HttpServletRequest req,
			HttpServletResponse response,int Pidx, String delivery, String Pimage,
			int Svol,int totalSum,int Pprice ) {
		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");
		ShoppingCartVO Svo =new ShoppingCartVO();

		Svo.setMidx(login.getMidx());
		MemberVO mvo=ShoppingService.selectUser(login.getMidx());
		model.addAttribute("mvo", mvo);


		return  "Shopping/ShoppingOrder2";
	}
	@RequestMapping(value="/ShoppingCartEnd.do")
	public String ShoppingOrder(Locale locale, Model model,HttpServletRequest req,
			HttpServletResponse response) {

			req.setAttribute("msg", "결제가 완료되었습니다");
			req.setAttribute("url", "/");
		return  "alert";
	}

}
