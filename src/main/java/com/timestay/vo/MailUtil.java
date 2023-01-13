package com.timestay.vo;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;

import com.timestay.service.MemberService;

public class MailUtil {
@Autowired MemberService service;
	
	public void sendEmail(MemberVO vo) throws Exception{
		
		//Mail Server ����
		String charSet="utf-8";
		String hostSMTP="smtp.naver.com";
		String hostSMTPid="timestay23"; //������ �̸��� ���̵�
		String hostSMTPpw="timestay23!"; //������ �̸��� ��й�ȣ
		
		//������ ��� 
		String fromEmail="timestay23@naver.com"; //������ ��� �̸��� 
		String fromName="TimeStay"; //������ ��� �̸�
		
		String subject="�ӽ� ��й�ȣ �߱�"; //���� ����
		String msg="";
		
		msg +="<h2>";
		msg +=vo.getMid() + "���� �ӽ� ��й�ȣ�Դϴ�.</h2>";
		msg +="<h1>�ӽ� ��й�ȣ : ";
		msg +=vo.getMpwd() + "</h1></div>";
		msg +="<h2 style='color:red; font-weight:bold;'>�α��� �� �������������� ��й�ȣ�� �ݵ�� ������ �ּ���!<h2>";
		
		//email����
		String mailRecipient=vo.getMemail();//�޴� ��� �̸��� �ּ�
		try {
			//��ü ����
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
