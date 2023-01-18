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
	
	
	@RequestMapping(value = "/ProductInfo.do", method = RequestMethod.GET)//  '/'�� welcome file�̶�� ��
	
	public String list(Locale locale, Model model,HttpServletRequest req,HttpServletResponse response ,int Pidx)throws ServletException, IOException {
		//int Pidx�� ������ ���� �� ���������� Pidx�� �޾ƿ� �� �ִ� �� ����.                    //�� Midx�� ������ �����ۼ��ؼ�
		req.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");
		//db����  boardtb ������ ��� ��������
		 //System.out.println("Midx:"+Midx);
		HttpSession session = req.getSession();
		System.out.println("Pidx="+Pidx);
		MemberVO login = (MemberVO)session.getAttribute("login");
		System.out.println("info:"+login);
		List<ProductReviewVO> lrvo =ProductService.Review(Pidx);
		model.addAttribute("lrvo",lrvo);
		ProductVO vo = ProductService.selectOne(Pidx);
		vo.setPidx(Pidx);//Pidx�� view�������� �ѱ�� ���ؼ� ��� ����
		model.addAttribute("vo",vo);
		model.addAttribute("login", login);
		ProductReviewVO rvo = ProductService.AvgRscore(Pidx);//��⼭ pidx�� ��Ҿ�
		model.addAttribute("rvo", rvo);//view�� �Ѹ��� ���ؼ� ��°� �ƴѰ�?  12/19��
		System.out.println("AvgRscore:"+ ProductService.AvgRscore(Pidx));
		System.out.println("rvo::::"+rvo);
		return "Product/ProductInfo"; 
	
	}
	@RequestMapping(value = "/ProductInsertReview.do", method = RequestMethod.POST)
	public String insert(Model model, ProductReviewVO rvo, HttpServletRequest req,HttpServletResponse response,int Pidx) throws ServletException, IOException {
	System.out.println("Pidx:"+Pidx);
		req.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");


		HttpSession session = req.getSession();
		MemberVO login = (MemberVO)session.getAttribute("login");
		String ip = (String)session.getAttribute("ip");
		System.out.println("ip:"+ip);
		ProductVO vo =ProductService.selectOne(Pidx);
		System.out.println("getMidx:"+login.getMidx());

		rvo.setMidx(login.getMidx());
		rvo.setMid(login.getMid());
		System.out.println(vo);
		model.addAttribute("vo",vo);

		//rvo.setRwip(ip);
		
		System.out.println(rvo.toString());
		ProductService.InsertReview(rvo);
		System.out.println("ip1:"+ip);
		
		return "redirect:ProductInfo.do?Pidx="+rvo.getPidx();
	}

	@RequestMapping(value = "/ProductReviewModify.do", method = RequestMethod.POST)
	public String ProductReviewModify(Model model,ProductVO vo, ProductReviewVO rvo, HttpServletRequest req,HttpServletResponse response, int Ridx, int Pidx) throws UnsupportedEncodingException {
		req.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");
	System.out.println("PidxModify:"+Pidx);
		 HttpSession session = req.getSession();
		 MemberVO login = (MemberVO)session.getAttribute("login");
		 rvo.setMidx(login.getMidx());
	 System.out.println("login.getMidx():"+login.getMidx());
	 	 model.addAttribute("login", login);
	 	 int result=  ProductService.ProductReviewModify(rvo);
	 	 model.addAttribute("rvo", rvo);
	 System.out.println("result:"+result);
		 return "redirect:ProductInfo.do?Pidx="+Pidx;
	}

	@RequestMapping(value = "/ProductReviewDelete.do", method = RequestMethod.POST)
	public String ProductReviewDelete( Model model, int Pidx, int Ridx) {
		
		int result= ProductService.ProductReviewDelete(Ridx);

		//		model.addAttribute("result",result);


		return "redirect:ProductInfo.do?Pidx="+Pidx;
	}
	
}
