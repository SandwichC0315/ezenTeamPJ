package com.timestay.vo;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;

import com.timestay.service.MemberService;

public class MailUtil {
@Autowired MemberService service;
	
	public void sendEmail(MemberVO vo) throws Exception{
		
		//Mail Server 설정
		String charSet="utf-8";
		String hostSMTP="smtp.naver.com";
		String hostSMTPid="timestay23"; //관리자 이메일 아이디
		String hostSMTPpw="timestay23!"; //관리자 이메일 비밀번호
		
		//보내는 사람 
		String fromEmail="timestay23@naver.com"; //보내는 사람 이메일 
		String fromName="TimeStay"; //보내는 사람 이름
		
		String subject="임시 비밀번호 발급"; //메일 제목
		String msg="";
		
		msg +="<h2>";
		msg +=vo.getMid() + "님의 임시 비밀번호입니다.</h2>";
		msg +="<h1>임시 비밀번호 : ";
		msg +=vo.getMpwd() + "</h1></div>";
		msg +="<h2 style='color:red; font-weight:bold;'>로그인 후 마이페이지에서 비밀번호를 반드시 변경해 주세요!<h2>";
		
		//email전송
		String mailRecipient=vo.getMemail();//받는 사람 이메일 주소
		try {
			//객체 선언
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true);
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(995); 
			mail.setAuthentication(hostSMTPid, hostSMTPpw);
			mail.setStartTLSEnabled(true);
			mail.addTo(mailRecipient,charSet);
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void findPw(HttpServletResponse response,MemberVO vo) {
		response.setContentType("text/html;charset=utf-8");
		
	}
}
