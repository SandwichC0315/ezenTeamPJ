package com.timestay.group;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.timestay.service.MemberService;
import com.timestay.service.Product2Service;
import com.timestay.vo.BoardFaqVO;
import com.timestay.vo.Criteria;
import com.timestay.vo.MemberVO;
import com.timestay.vo.PageMaker;
import com.timestay.vo.ProductVO2;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/MyPage")
@Controller
public class MyPageController {
	
	@Autowired
	private MemberService MemberService;
	
	@Autowired
	private Product2Service product2Service;

	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/member_Modify.do", method = RequestMethod.GET)
	public String member_Modify(MemberVO vo,Model model, HttpServletRequest req) {
		
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
		model.addAttribute("Mgrade", mv.getMgrade());
		
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		return "MyPage/member_Modify";
	}
	
	@RequestMapping(value = "/member_Modify.do", method = RequestMethod.POST)
	public String modifyFaq(MemberVO vo, Model model, HttpServletResponse res, HttpServletRequest req) {
		
		int result = MemberService.modify(vo);
		
		
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		return "redirect:../";
	}
	
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
	public void member_Point(Locale locale, Model model, HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		res.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pw = res.getWriter();

			pw.append("<script>alert('준비중입니다!');location.href='javascript:history.back();'</script>");
			
			pw.flush();
			pw.close();
;
	}
	

	@RequestMapping(value = "/MyPageOrderView.do", method = RequestMethod.GET)
	public String MyPageOrderView(Locale locale, Model model, HttpServletRequest req) {

		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		
		return "MyPage/MyPageOrderView";
	}

	@RequestMapping(value = "/MyPageShoppingCart.do", method = RequestMethod.GET)
	public String MyPageShoppingCart(Locale locale, Model model, HttpServletRequest req) {

		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		return "MyPage/MyPageShoppingCart";
	}
	
	
	@RequestMapping(value = "/MPMemberManage.do", method = RequestMethod.GET)
	public String MPMemberManage(Locale locale, Model model, HttpServletRequest req)
	{
		List<MemberVO> list = MemberService.list();
		
		model.addAttribute("list", list);
		
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		return "MyPage/MPMemberManage";
	}
	
	
	@RequestMapping(value = "/MPProductManage.do", method = RequestMethod.GET)
	public String MPProductManage(Locale locale, Model model, HttpServletRequest req, Criteria cri)
	{
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(product2Service.count());
		
		List<ProductVO2> list = product2Service.list(cri);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		model.addAttribute("select", cri.getPage());
		
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		return "MyPage/MPProductManage";
	}
	
	
	@RequestMapping(value = "/MPProductDelete.do", method = RequestMethod.GET)
	public void MPProductDelete(int pidx, HttpServletResponse res, HttpServletRequest req) throws Exception
	{
		int result = product2Service.delete(pidx);
		
		res.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pw = res.getWriter();
		if (result > 0)
		{
			pw.append("<script>alert('삭제하였습니다.');location.href='MPProductManage.do'</script>");
			
			pw.flush();
			pw.close();
		}
		else
		{
			pw.append("<script>alert('삭제 요청 처리 중 문제가 발생하였습니다.');location.href='MPProductManage.do'</script>");
			
			pw.flush();
			pw.close();
		}
	
	}
	
	@RequestMapping(value = "/MPProductInsert.do", method = RequestMethod.GET)
	public String MPProductInsert(Locale locale, Model model, ProductVO2 vo, HttpServletRequest req)
	{
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		
		return "MyPage/MPProductInsert";
	}
	
	
	@RequestMapping(value = "/MPProductInsert.do", method = RequestMethod.POST)
	public String MPProductInsert(Model model, MultipartFile file, HttpServletRequest req, ProductVO2 vo) throws Exception
	{
		
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		
		String path = req.getSession().getServletContext().getRealPath("/resources/images");
		System.out.println("path="+path);
		File dir = new File(path);
		if (!dir.exists())
		{
			dir.mkdirs();
		}
		
		if (!file.getOriginalFilename().isEmpty())
		{
			file.transferTo(new File(path, file.getOriginalFilename()));
		}

		int result = product2Service.insertProduct(vo);

		return "redirect:MPProductManage.do";
	}
	
	
	@RequestMapping(value = "/MPProductModify.do", method = RequestMethod.GET)
	public String MPProductModify(Locale locale, Model model, int pidx, HttpServletRequest req)
	{
		ProductVO2 vo = product2Service.selectProduct(pidx);
		
		model.addAttribute("vo", vo);
		
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		return "MyPage/MPProductModify";
	}
	
	@RequestMapping(value = "/MPProductModify.do", method = RequestMethod.POST)
	public void MPProductModify(Model model, MultipartFile file, HttpServletRequest req, ProductVO2 vo, HttpServletResponse res) throws Exception
	{
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		model.addAttribute("Mgrade", login.getMgrade());
		
		String path = req.getSession().getServletContext().getRealPath("/resources/images");

		File dir = new File(path);
		if (!dir.exists())
		{
			dir.mkdirs();
		}
		
		if (!file.getOriginalFilename().isEmpty())
		{
			file.transferTo(new File(path, file.getOriginalFilename()));
		}
		
		int result = product2Service.updateProduct(vo);

		res.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pw = res.getWriter();
		if (result > 0)
		{
			pw.append("<script>alert('수정을 완료하였습니다.');location.href='MPProductManage.do';</script>");
			
			pw.flush();
			pw.close();
		}
		else
		{
			pw.append("<script>alert('수정에 실패하였습니다.');location.href='MPProductManage.do';</script>");
			
			pw.flush();
			pw.close();
		}
		
		
	}

}
