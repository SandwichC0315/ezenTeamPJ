package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.BoardNoticeDAO;
import com.timestay.vo.BoardNoticeVO;

//@Service - 구현하고 있는 인터페이스에 대한 구현 객체를 만드는 어노테이션
@Service("boardNoticeServiceImpl")
public class BoardNoticeServiceImpl implements BoardNoticeService{
	
	@Autowired(required=false)
	private BoardNoticeDAO boardnoticeDAO;

	@Override
	public List<BoardNoticeVO> list() {
		
		System.out.println("boardnoticeDAO"+boardnoticeDAO);
		return boardnoticeDAO.list();
	}

}
