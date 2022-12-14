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




	}


