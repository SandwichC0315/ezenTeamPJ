package com.timestay.service;

import java.util.List;

import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.Criteria;

public interface BoardNoticeService {

	public List<BoardNoticeVO> list(Criteria cri);
	
	BoardNoticeVO selectOne(int BNidx);
	
	int update(BoardNoticeVO vo);

	int updateNoticehit(int BNidx);

	int insertNotice(BoardNoticeVO vo);
	
	int count(Criteria cri);
	
	int delete(int BNidx);
}
