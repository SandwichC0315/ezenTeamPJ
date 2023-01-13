package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.BoardNoticeDAO;
import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.Criteria;

@Service("boardNoticeServiceImpl")
public class BoardNoticeServiceImpl implements BoardNoticeService{
	
	@Autowired
	private BoardNoticeDAO boardnoticeDAO;

	@Override
	public List<BoardNoticeVO> list(Criteria cri) {
		
		return boardnoticeDAO.list(cri);
	}
	
	@Override
	public BoardNoticeVO selectOne(int BNidx)
	{
		return boardnoticeDAO.selectOne(BNidx);
	}

	@Override
	public int update(BoardNoticeVO vo) {
		// TODO Auto-generated method stub
		return boardnoticeDAO.update(vo);
	}
	
	@Override
	public int updateNoticehit(int BNidx)
	{
		return boardnoticeDAO.updateNoticeHit(BNidx);
	}
	
	@Override
	public int insertNotice(BoardNoticeVO vo)
	{
		return boardnoticeDAO.insertNotice(vo);
	}

	@Override
	public int count(Criteria cri) {
		return boardnoticeDAO.count(cri);
	}

	@Override
	public int delete(int BNidx) {
		return boardnoticeDAO.delete(BNidx);
	}

	


}
