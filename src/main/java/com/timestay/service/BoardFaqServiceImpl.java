package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.BoardFaqDAO;
import com.timestay.vo.BoardFaqVO;

//@Service - 구현하고 있는 인터페이스에 대한 구현 객체를 만드는 어노테이션
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
