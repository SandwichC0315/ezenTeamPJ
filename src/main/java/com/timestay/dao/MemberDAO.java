package com.timestay.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.BoardFaqVO;
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
	
	public MemberVO selectOne(MemberVO vo) {
		return sqlSession.selectOne("com.timestay.mapper.MemberMapper.selectOne" , vo );
	}
	
	public MemberVO findMemberByMidx(int Midx)
	{
		return sqlSession.selectOne("com.timestay.mapper.MemberMapper.findMemberByMidx", Midx);
	}

	public int modify(MemberVO vo) {
	
	return sqlSession.update("com.timestay.mapper.MemberMapper.modify", vo);
		
	}
}
