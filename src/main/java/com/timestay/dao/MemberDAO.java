package com.timestay.dao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


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
	

}
