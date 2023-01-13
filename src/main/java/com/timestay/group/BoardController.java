package com.timestay.group;

import java.util.Date;
import java.util.List;
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

import com.timestay.service.BoardNoticeService;
import com.timestay.service.BoardNoticeServiceImpl;
import com.timestay.service.BoardQnaService;
import com.timestay.service.BoardQnaServiceImpl;
import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.BoardQnaVO;
import com.timestay.vo.MemberVO;







/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/Board")
@Controller
public class BoardController {
	
	@Autowired(required=false)
	private BoardNoticeService boardnoticeService;
	@Autowired(required=false)//매 줄마다 AutoWierd를 주입해야함
	private BoardQnaService boardQnaService;

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
	public String qna(Locale locale, Model model) {


		//db에서 TB_BoardQna 데이터 목록 가져옴
		List<BoardQnaVO> list = boardQnaService.list();
		
		
		model.addAttribute("list", list);
		System.out.println("boardQnaService"+boardQnaService);
		System.out.println("list"+list);
		return "Board/BoardQna";
	}
	@RequestMapping(value = "/BoardQnaInsert.do", method = RequestMethod.GET)
	public String insert() {
		
		return "Board/BoardQnaInsert";
	}
	@RequestMapping(value = "/BoardQnainsert.do", method = RequestMethod.POST)
	public String insert(BoardQnaVO vo, HttpServletRequest req) {
		HttpSession session = req.getSession();		
		MemberVO login = (MemberVO)session.getAttribute("login");
		vo.setMidx(login.getMidx());	
		int result = boardQnaService.insert(vo);
		
		return "redirect:view.do?bidx="+vo.getBQidx();

	}
	@RequestMapping(value = "/BoardQnaModify.do", method = RequestMethod.POST)
	public String modify(/*BoardVO vo, HttpServletResponse res*/){//throws Exception {//화면으로부터 여러개의 값을 입력받으니까 BoardVo로 받아서 Mapper로 넘기는거 매개변수로 입력값을 받는거지
//		
//		//db 수정처리
//		int result = boardService.update(vo);//쿼리의 결과가 아니라 마이바티스의 결과 Ex)insert update delete 성공하면 1반환 실패하면 0 반환
//		
//		res.setContentType("text/html; charset=UTF-8");
//		PrintWriter pw = res.getWriter();// 요거를 이용해서 컨트롤러에서도 html 출력 가능
//		
//		if(result>0) {
//			//수정성공
//			pw.append("<script>alert('수정성공!!');"
//					+"location href='view.do?bidx="+vo.getBidx()+"'</script>");
//		}else {
//			//수정실패
//			pw.append("<script>alert('수정실패!!');"
//					+"location href='modify.do?bidx="+vo.getBidx()+"'</script>");
//			pw.flush();
//			pw.close();
//		}
		return "";
//		return "redirect:/board/view.do?bidx="+vo.getBidx();//      / 가 있으면 프로젝트 이름 뒤에 부터 쓰면 된다.
	}
	

	
}
