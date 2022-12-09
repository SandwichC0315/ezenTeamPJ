package com.timestay.dao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.timestay.vo.MemberVO;


//IOC �����̳ʿ� BoardDAO�� ��ü�� ����
@Repository //�ý��� �ܺη� �����ؼ� ������ ��û, ���� ���� ������ �ϴ� ��ü ������̼�
public class MemberDAO {
	
	@Autowired //Ÿ���� ������� ���� ����
	private SqlSession sqlSession;

	
	public MemberVO findMemberByIdPass(MemberVO vo) {
		
		System.out.println("vo:"+vo.getMid());
		System.out.println("vo:"+vo.getMpwd());
		
		return sqlSession.selectOne("com.timestay.mapper.MemberMapper.findMemberByIdPass", vo);
	}
	

}
