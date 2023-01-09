package com.timestay.dao;
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
	
	public int modify(MemberVO vo) {
		return sqlSession.update("com.timestay.mapper.MemberMapper.modify", vo);		
	}
	
	
	public int signUp(MemberVO vo) {
		return sqlSession.insert("com.timestay.mapper.MemberMapper.signUp", vo);
	}
	
	public MemberVO idCheck(String Mid) throws Exception{
		return sqlSession.selectOne("com.timestay.mapper.MemberMapper.idCheck", Mid);
	}
	
	public int memberDelete(MemberVO vo) throws Exception{
		return sqlSession.delete("com.timestay.mapper.MemberMapper.memberDelete", vo);
	}
	
	public MemberVO findId(MemberVO vo) {
		return sqlSession.selectOne("com.timestay.mapper.MemberMapper.findId", vo);
	}
	
	public MemberVO findPw(MemberVO vo) {
		return sqlSession.selectOne("com.timestay.mapper.MemberMapper.findPw", vo);
	}
	
	public int updatePw(MemberVO vo) {
		return sqlSession.update("com.timestay.mapper.MemberMapper.updatePw", vo);
	}
	
}
