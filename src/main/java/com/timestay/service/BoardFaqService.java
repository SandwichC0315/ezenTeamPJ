package com.timestay.service;

import java.util.List;

import com.timestay.vo.BoardFaqVO;
import com.timestay.vo.Criteria;


public interface BoardFaqService {

	public List<BoardFaqVO> list(Criteria cri);
	
	int countBoardListTotal();
	
	int insertFaq(BoardFaqVO vo);
	
	int deleteFaq(int bfidx);
	
	BoardFaqVO selectOneByBfidx(int BFidx);
	
	int modifyFaq(BoardFaqVO vo);
}
