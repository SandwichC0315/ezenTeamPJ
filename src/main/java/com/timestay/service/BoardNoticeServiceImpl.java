package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.BoardNoticeDAO;
import com.timestay.vo.BoardNoticeVO;

//@Service - �����ϰ� �ִ� �������̽��� ���� ���� ��ü�� ����� ������̼�
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
