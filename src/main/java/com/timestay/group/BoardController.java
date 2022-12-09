package com.timestay.group;

import java.util.Date;
import java.util.List;
import java.text.DateFormat;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.timestay.service.BoardNoticeService;
import com.timestay.service.BoardNoticeServiceImpl;
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
	
		
		//db에서 TB_BoardNotice 데이터 목록 가져옴
		List<BoardNoticeVO> list = boardnoticeService.list();
		
		System.out.println("list"+list);
		
		model.addAttribute("list", list);
		
		return "Board/BoardNotice";
	}
	
	@RequestMapping(value = "/BoardFaq.do", method = RequestMethod.GET)
	public String faq() {
		
		return "Board/BoardFaq";
	}
	
	@RequestMapping(value = "/BoardQna.do", method = RequestMethod.GET)
	public String qna() {
		
		return "Board/BoardQna";
	}
	
	
	
	
}
