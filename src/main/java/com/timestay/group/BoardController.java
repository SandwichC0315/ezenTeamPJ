package com.timestay.group;

import java.util.Date;
import java.util.List;
import java.text.DateFormat;
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

import com.timestay.service.BoardFaqService;
import com.timestay.service.BoardNoticeService;
import com.timestay.service.BoardNoticeServiceImpl;
import com.timestay.vo.BoardFaqVO;
import com.timestay.vo.BoardNoticeVO;


/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/Board")
@Controller
public class BoardController {
	
	@Autowired(required=false)
	private BoardNoticeService boardnoticeService;

	@RequestMapping(value = "/BoardNotice.do", method = RequestMethod.GET)
	public String notice(Locale locale, Model model) {
		
		System.out.println("boardnoticeService"+boardnoticeService);
	
		
		//db�뿉�꽌 TB_BoardNotice �뜲�씠�꽣 紐⑸줉 媛��졇�샂
		List<BoardNoticeVO> list = boardnoticeService.list();
		
		System.out.println("list"+list);
		
		model.addAttribute("list", list);
		
		return "Board/BoardNotice";
	}
	
	@Autowired(required=false)
	private BoardFaqService boardfaqService;
	
	@RequestMapping(value = "/BoardFaq.do", method = RequestMethod.GET)
	public String faq(Locale locale, Model model) {
		
		System.out.println("boardfaqService"+boardfaqService);
	
		
		//db�뿉�꽌 TB_BoardFaq �뜲�씠�꽣 紐⑸줉 媛��졇�샂
		List<BoardFaqVO> list = boardfaqService.list();
		
		System.out.println("list"+list);
		
		model.addAttribute("list", list);
		
		
		return "Board/BoardFaq";
	}
	
	@RequestMapping(value = "InsertFaq.do", method = RequestMethod.GET)
	public String insert() {		
		
		return "Board/InsertFaq";
	}
	
	@RequestMapping(value = "InsertFaq.do", method = RequestMethod.POST)
	public String insertFaq(BoardFaqVO vo, HttpServletRequest req) {
		
		
		int result = boardfaqService.insertFaq(vo);
		
		return "redirect:BoardFaq.do";
	}
	
	@RequestMapping(value = "/BoardQna.do", method = RequestMethod.GET)
	public String qna() {
		
		return "Board/BoardQna";
	}
	
	
	
	
}
