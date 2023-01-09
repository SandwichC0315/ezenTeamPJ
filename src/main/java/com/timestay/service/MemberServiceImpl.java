package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.MemberDAO;
import com.timestay.vo.MemberVO;

//@Service - 구현하고 있는 인터페이스에 대한 구현 객체를 만드는 어노테이션
@Service("MemberServiceImpl")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO MemberDAO;

	@Override
	public MemberVO findMemberByIdPass(MemberVO vo) {
		return MemberDAO.findMemberByIdPass(vo);
	}

	@Override
	public MemberVO selectOneByMid(MemberVO vo) {
		
		return MemberDAO.selectOne(vo);
	}

	@Override
	public int modify(MemberVO vo) {
		
		return MemberDAO.modify(vo);
	}

	@Override
	public int signUp(MemberVO vo) {
		
		return MemberDAO.signUp(vo);
	}

	@Override
	public MemberVO idCheck(String Mid) throws Exception {
		
		return MemberDAO.idCheck(Mid);
	}

	@Override
	public int memberDelete(MemberVO vo) throws Exception {

		
		return MemberDAO.memberDelete(vo);
	}

	@Override
	public MemberVO findId(MemberVO vo) {
		
		return MemberDAO.findId(vo);
	}

	@Override
	public MemberVO findPw(MemberVO vo) {
		
		return MemberDAO.findPw(vo);
	}

	@Override
	public int updatePw(MemberVO vo) {
		
		return MemberDAO.updatePw(vo);
	}


	}






	


