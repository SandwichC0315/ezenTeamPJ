package com.timestay.service;

import java.util.List;


import com.timestay.vo.MemberVO;


public interface MemberService {
	MemberVO findMemberByIdPass(MemberVO vo);

	MemberVO selectOneByMid(MemberVO vo);
	
	MemberVO findMemberByMidx(int Midx);
	
	int modify(MemberVO vo);
	
	public List<MemberVO> list();
	int signUp(MemberVO vo);
	
	MemberVO idCheck(String Mid) throws Exception;
	
	int memberDelete(MemberVO vo) throws Exception;
	
	MemberVO findId(MemberVO vo);
	
	MemberVO findPw(MemberVO vo);
	
	int updatePw(MemberVO vo);
}