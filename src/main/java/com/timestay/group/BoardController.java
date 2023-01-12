package com.timestay.group;

import java.util.Date;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
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

import com.timestay.service.BoardFaqService;
import com.timestay.service.BoardNoticeService;
import com.timestay.service.MemberService;
import com.timestay.vo.BoardFaqVO;
import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.Criteria;
import com.timestay.vo.MemberVO;
import com.timestay.vo.PageMaker;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/Board")
@Controller
public class BoardController {
	
	@Autowired(required=false)
	private BoardNoticeService boardnoticeService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired(required=false)
	private BoardFaqService boardfaqService;

	@RequestMapping(value = "/BoardNotice.do", method = RequestMethod.GET)
	public String notice(Locale locale, Model model, HttpServletRequest req, BoardNoticeVO vo, Criteria cri) 
	{
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(boardnoticeService.count(cri));
		
		//db에서 TB_BoardNotice 데이터 목록 가져옴
		List<BoardNoticeVO> list = boardnoticeService.list(cri);

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		model.addAttribute("select", cri.getPage());
		
	
		HttpSession session = req.getSession();

		MemberVO login = (MemberVO)session.getAttribute("login");

		if(login != null)
		{
			vo.setMidx(login.getMidx());
			MemberVO Mvo = memberService.findMemberByMidx(vo.getMidx());
			model.addAttribute("Mvo", Mvo);
		}

		return "Board/BoardNotice";
	}
	
	
	@RequestMapping(value = "/BoardNoticeView.do", method = RequestMethod.GET)
	public String BoardNoticeView(Locale locale, int BNidx, Model model, HttpServletRequest req){	
		boardnoticeService.updateNoticehit(BNidx);

		BoardNoticeVO vo = boardnoticeService.selectOne(BNidx);
		
		//"vo"에 vo값 set
		model.addAttribute("vo", vo);
		
		
		HttpSession session = req.getSession();

		MemberVO login = (MemberVO)session.getAttribute("login");

		if(login != null)
		{
			vo.setMidx(login.getMidx());
			MemberVO Mvo = memberService.findMemberByMidx(vo.getMidx());
			model.addAttribute("Mvo", Mvo);
		}

		return "Board/BoardNoticeView";
	}
	
	
	@RequestMapping(value = "/BoardNoticeModify.do", method = RequestMethod.GET)
	public String BoardNoticeModify(Locale locale, int BNidx, Model model, HttpServletResponse res)
	{
		System.out.println("ModifyPage");
		
		BoardNoticeVO vo = boardnoticeService.selectOne(BNidx);
		
		model.addAttribute("vo", vo);
		
		return "Board/BoardNoticeModify";
	}
	
	
	@RequestMapping(value= "/BoardNoticeModify.do", method = RequestMethod.POST)
	public void BoardNoticeModify(BoardNoticeVO vo, HttpServletResponse res, HttpServletRequest request) throws Exception
	{
		int result = boardnoticeService.update(vo);
		res.setContentType("text/html; charset=UTF-8");
			
		PrintWriter pw = res.getWriter();
		
		if (result > 0)
		{
			pw.append("<script>alert('수정 성공'); location.href='BoardNoticeView.do?BNidx="+vo.getBNidx()+"'</script>");
		
			pw.flush();
			pw.close();
		}
		else
		{
			pw.append("<script>alert('수정 실패'); location.href='BoardNoticeView.do?BNidx="+vo.getBNidx()+"'</script>");
			
			pw.flush();
			pw.close();
		}
	}
	
	
	@RequestMapping(value = "/BoardNoticeWrite.do", method = RequestMethod.GET)
	public String BoardNoticeWrite(Locale locale, Model model)
	{
		return "Board/BoardNoticeWrite";
	}
	
	@RequestMapping(value = "/BoardNoticeWrite.do", method = RequestMethod.POST)
	public String BoardNoticeWrite(BoardNoticeVO vo, HttpServletRequest req)
	{
		HttpSession session = req.getSession();
		
		MemberVO login = (MemberVO)session.getAttribute("login");
		
		vo.setMidx(login.getMidx());
		
		int result = boardnoticeService.insertNotice(vo);
		
		return "redirect:BoardNoticeView.do?BNidx="+vo.getBNidx();
	}
	
	
	@RequestMapping(value = "/BoardNoticeDelete.do", method = RequestMethod.POST)
	public void delete(BoardNoticeVO vo, HttpServletResponse res, HttpServletRequest req) throws Exception
	{
		int result = boardnoticeService.delete(vo.getBNidx());
		
		res.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pw = res.getWriter();
		if (result > 0)
		{
			//삭제 성공
			pw.append("<script>alert('삭제하였습니다.');location.href='BoardNotice.do'</script>");
			
			pw.flush();
			pw.close();
		}
		else
		{
			//삭제 실패
			pw.append("<script>alert('삭제 요청 처리중 문제가 발생하였습니다.');location.href='BoardNotice.do'</script>");

			pw.flush();
			pw.close();
		}
		
		
	}
	
	
	@RequestMapping(value = "/BoardFaq.do", method = RequestMethod.GET)
	public String faq(Locale locale, Model model, Criteria cri, HttpServletRequest req, BoardFaqVO vo)  {
		
		System.out.println("boardfaqService"+boardfaqService);
	
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(boardfaqService.countBoardListTotal());
		
		//db�뿉�꽌 TB_BoardFaq �뜲�씠�꽣 紐⑸줉 媛��졇�샂
		List<BoardFaqVO> list = boardfaqService.list(cri);
		
		System.out.println("list"+list);
		
		model.addAttribute("list", list);
	    model.addAttribute("pageMaker", pageMaker);
	    //model.addAttribute("pageStart", cri.getPageStart());
	    //model.addAttribute("perPageNum", cri.getPerPageNum());
		
		
		HttpSession session = req.getSession();

		MemberVO login = (MemberVO)session.getAttribute("login");

		if(login != null)
		{
			vo.setMidx(login.getMidx());
			MemberVO Mvo = memberService.findMemberByMidx(vo.getMidx());
			model.addAttribute("Mvo", Mvo);
		}
		
		return "Board/BoardFaq";
	}
	
	@RequestMapping(value = "InsertFaq.do", method = RequestMethod.GET)
	public String insertFaq() {		
		
		return "Board/InsertFaq";
	}
	
	@RequestMapping(value = "InsertFaq.do", method = RequestMethod.POST)
	public String insertFaq(BoardFaqVO vo) {
		
		
		int result = boardfaqService.insertFaq(vo);
		
		return "redirect:BoardFaq.do";
	}
	
	@RequestMapping(value = "deleteFaq.do", method = RequestMethod.POST)
	public String deleteFaq(int bfidx) {
		
		int result = boardfaqService.deleteFaq(bfidx);
		
		return "redirect:BoardFaq.do";
	}
	
//	@RequestMapping(value = "ModifyFaq.do", method = RequestMethod.GET)
//	public String modifyFaq() {
//		
//		return "Board/ModifyFaq";
//	}
//	
//
//	@RequestMapping(value = "ModifyFaq.do", method = RequestMethod.POST)
//	public String modifyFaq(BoardFaqVO vo) {
//		
//		
//		int result = boardfaqService.modifyFaq(vo);
//		
//		return "redirect:BoardFaq.do";
//	}
	
	@RequestMapping(value = "ModifyFaq.do", method = RequestMethod.GET)
	public String modifyFaq(int BFidx, Model model) {
		
		BoardFaqVO vo = boardfaqService.selectOneByBfidx(BFidx);
		
		model.addAttribute("vo", vo);
		
		return "Board/ModifyFaq";
	}
	
	
	@RequestMapping(value = "ModifyFaq.do", method = RequestMethod.POST)
	public String modifyFaq(BoardFaqVO vo, HttpServletResponse res) {
		
		//db 수정처리
		int result = boardfaqService.modifyFaq(vo);		
		
		return "redirect:BoardFaq.do";
	}
	
	@RequestMapping(value = "/BoardQna.do", method = RequestMethod.GET)
	public String qna()
	{
		
		return "Board/BoardQna";
	}
	
	
	
	
}
