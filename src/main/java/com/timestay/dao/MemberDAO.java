package com.timestay.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.BoardFaqVO;
import com.timestay.vo.MemberVO;


//IOC 컨테이너에 BoardDAO를 객체로 생성
@Repository //시스템 외부로 연결해서 데이터 요청, 응답 관리 역할을 하는 객체 어노테이션
public class MemberDAO {
	
	@Autowired //타입을 기반으로 의존 주입
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
	
	public List<MemberVO> list()
	{
		return sqlSession.selectList("com.timestay.mapper.MemberMapper.getList");
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
