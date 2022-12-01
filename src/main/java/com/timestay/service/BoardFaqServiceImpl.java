package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.BoardFaqDAO;
import com.timestay.vo.BoardFaqVO;

//@Service - �����ϰ� �ִ� �������̽��� ���� ���� ��ü�� ����� ������̼�
@Service("boardFaqServiceImpl")
public class BoardFaqServiceImpl implements BoardFaqService{
	
	@Autowired(required=false)
	private BoardFaqDAO boardfaqDAO;

	@Override
	public List<BoardFaqVO> list() {
		
		System.out.println("boardnoticeDAO"+boardfaqDAO);
		return boardfaqDAO.list();
	}

	@Override
	public int insertFaq(BoardFaqVO vo) {
		return boardfaqDAO.insertFaq(vo);
	}

}
