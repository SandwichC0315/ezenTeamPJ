package com.timestay.group;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
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
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.timestay.service.ProductService;
import com.timestay.vo.MemberVO;
import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;









/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/Product")

@Controller
public class ProductController {
	
	@Autowired(required=false)
	private ProductService ProductService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/ProductDessert.do", method = RequestMethod.GET)
	public String Dessert(Locale locale, Model model) {
		List<ProductVO> ProductList1 = ProductService.ProductList1();

		model.addAttribute("ProductList1", ProductList1);
		List<ProductVO> ProductList2 = ProductService.ProductList2();

		model.addAttribute("ProductList2", ProductList2);		
		 return "Product/ProductDessert";
	}
	
	@RequestMapping(value = "/ProductDrink.do", method = RequestMethod.GET)
	public String Drink(Locale locale, Model model) {
		List<ProductVO> ProductList3 = ProductService.ProductList3();

		model.addAttribute("ProductList3", ProductList3);
		List<ProductVO> ProductList4 = ProductService.ProductList4();

		model.addAttribute("ProductList4", ProductList4);		
		 return "Product/ProductDrink";
}
	
	@RequestMapping(value = "/ProductFood.do", method = RequestMethod.GET)
	public String Food(Locale locale, Model model) {
		List<ProductVO> ProductList5 = ProductService.ProductList5();

		model.addAttribute("ProductList5", ProductList5);		
		
		List<ProductVO> ProductList6 = ProductService.ProductList6();

		model.addAttribute("ProductList6", ProductList6);
		 return "Product/ProductFood";
	}

	@RequestMapping(value = "/ProductCoffeeBean.do", method = RequestMethod.GET)
	public String ProductCoffeeBean(Locale locale, Model model) {

		List<ProductVO> ProductList7 = ProductService.ProductList7();

		model.addAttribute("ProductList7", ProductList7);

		 return "Product/ProductCoffeeBean";
	}
	
	
	@RequestMapping(value = "/ProductInfo.do", method = RequestMethod.GET)//  '/'는 welcome file이라는 뜻
	
	public String list(Locale locale, Model model,HttpServletRequest req,HttpServletResponse response ,int Pidx)throws ServletException, IOException {
		//int Pidx를 씀으로 인해 전 페이지에서 Pidx를 받아올 수 있는 것 같다.                    //요 Midx를 가지고 쿼리작성해서
		req.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");
		//db에서  boardtb 데이터 목록 가져오기
		 //System.out.println("Midx:"+Midx);
		HttpSession session = req.getSession();
		System.out.println("Pidx="+Pidx);
		MemberVO login = (MemberVO)session.getAttribute("login");
		System.out.println("info:"+login);
		List<ProductReviewVO> lrvo =ProductService.Review(Pidx);
		model.addAttribute("lrvo",lrvo);
		ProductVO vo = ProductService.selectOne(Pidx);
		vo.setPidx(Pidx);//Pidx를 view페이지에 넘기기 위해서 담는 과정
		model.addAttribute("vo",vo);
		model.addAttribute("login", login);
		ProductReviewVO rvo = ProductService.AvgRscore(Pidx);//요기서 pidx를 담았어
		model.addAttribute("rvo", rvo);//view에 뿌리기 위해서 담는거 아닌가?  12/19일
		System.out.println("AvgRscore:"+ ProductService.AvgRscore(Pidx));
		System.out.println("rvo::::"+rvo);
		return "Product/ProductInfo"; 
	
	}
	@RequestMapping(value = "/ProductInsertReview.do", method = RequestMethod.POST)
	public String insert(Model model, ProductReviewVO rvo, HttpServletRequest req,HttpServletResponse response,int Pidx) throws ServletException, IOException {
	System.out.println("Pidx:"+Pidx);
		req.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");


		HttpSession session = req.getSession();//세션통을 받아오는 과정 세션 브라우저가 꺼질때까지 정보 가지고 있음
		MemberVO login = (MemberVO)session.getAttribute("login");//get이 꺼내는거 set이 넣는거 "login"으로 넣었으니 "login으로 빼야한다. 타입도 똑같이
		String ip = (String)session.getAttribute("ip");//MemberController에서 String 타입으로 ip를 설정했으니까 String로 꺼내야지
		System.out.println("ip:"+ip);
		ProductVO vo =ProductService.selectOne(Pidx);
		System.out.println("getMidx:"+login.getMidx());

		rvo.setMidx(login.getMidx());
		rvo.setMid(login.getMid());
		System.out.println(vo);
		model.addAttribute("vo",vo);

		rvo.setRwip(ip);
		
		System.out.println(rvo.toString());
		ProductService.InsertReview(rvo);
		System.out.println("ip1:"+ip);
		
		return "redirect:ProductInfo.do?Pidx="+rvo.getPidx();
	}
//	@RequestMapping(value = "/ProductReviewModify.do", method = RequestMethod.GET)
//	public String ProductReviewModify(Model model,int Ridx, int Pidx) {//아직안쓰는곳
//		System.out.println("Ridx="+Ridx);
//		System.out.println("PPidx="+Pidx);
//		ProductReviewVO rvo= ProductService.SelectRidx(Ridx);
//		rvo.setPidx(Pidx);
//		rvo.setRidx(Ridx);
//		model.addAttribute("rvo", rvo);
//		return "Product/ProductInfo?Pidx="+Pidx;
//	}
	@RequestMapping(value = "/ProductReviewModify.do", method = RequestMethod.POST)
	public String ProductReviewModify(Model model,ProductVO vo, ProductReviewVO rvo, HttpServletRequest req,HttpServletResponse response, int Ridx, int Pidx) throws UnsupportedEncodingException {
		req.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");
	System.out.println("PidxModify:"+Pidx);
		 HttpSession session = req.getSession();
		 MemberVO login = (MemberVO)session.getAttribute("login");
		 rvo.setMidx(login.getMidx());
		 	
		// model.addAttribute("rvo", rvo);
		 //vo.setPidx(Pidx);
	 System.out.println("login.getMidx():"+login.getMidx());
	 	 model.addAttribute("login", login);
	 	 int result=  ProductService.ProductReviewModify(rvo);
	 	 model.addAttribute("rvo", rvo);
	 System.out.println("result:"+result);
		 return "redirect:ProductInfo.do?Pidx="+Pidx;
	}
//	@RequestMapping(value = "/ProductReviewDelete.do", method = RequestMethod.POST)//board 지움 공통으로 묶으려고
//	public String ProductReviewDelete() {
//		
//	
//		//		model.addAttribute("result",result);
//
//
//		return "redirect:ProductInfo.do?Pidx="+Pidx;
//	}
	@RequestMapping(value = "/ProductReviewDelete.do", method = RequestMethod.POST)//board 지움 공통으로 묶으려고
	public String ProductReviewDelete( Model model, int Pidx, int Ridx) {
		
		int result= ProductService.ProductReviewDelete(Ridx);

		//		model.addAttribute("result",result);


		return "redirect:ProductInfo.do?Pidx="+Pidx;
	}
	
}
