package com.timestay.service;

import java.util.List;

import com.timestay.vo.MemberVO;


public interface MemberService {
	MemberVO findMemberByIdPass(MemberVO vo);

	MemberVO selectOneByMid(MemberVO vo);
	
	int modify(MemberVO vo);
}