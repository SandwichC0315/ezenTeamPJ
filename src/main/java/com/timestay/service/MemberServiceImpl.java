package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.MemberDAO;
import com.timestay.vo.MemberVO;

//@Service - �����ϰ� �ִ� �������̽��� ���� ���� ��ü�� ����� ������̼�
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




	}


