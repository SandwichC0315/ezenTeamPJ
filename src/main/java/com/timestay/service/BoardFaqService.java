package com.timestay.service;

import java.util.List;

import com.timestay.vo.BoardFaqVO;


public interface BoardFaqService {

	public List<BoardFaqVO> list();
	
	int insertFaq(BoardFaqVO vo);
	
	int deleteFaq(int bfidx);
	
	BoardFaqVO selectOneByBfidx(int BFidx);
	
	int modifyFaq(BoardFaqVO vo);
}
