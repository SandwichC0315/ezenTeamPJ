package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.BoardNoticeDAO;
import com.timestay.dao.BoardQnaDAO;
import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.BoardQnaVO;

//@Service - 구현하고 있는 인터페이스에 대한 구현 객체를 만드는 어노테이션
@Service("boardQnaServiceImpl")
public class BoardQnaServiceImpl implements BoardQnaService{
	
	@Autowired
	private BoardQnaDAO boardQnaDAO;

	@Override
	public List<BoardQnaVO> list() {
		// TODO Auto-generated method stub
		return boardQnaDAO.list();
	}

	@Override
	public int insert(BoardQnaVO vo) {
		// TODO Auto-generated method stub
		return boardQnaDAO.insert(vo);	}


	}


