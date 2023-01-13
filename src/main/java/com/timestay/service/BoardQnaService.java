package com.timestay.service;

import java.util.List;


import com.timestay.vo.BoardQnaVO;



public interface BoardQnaService {

	List<BoardQnaVO> list();
	int insert(BoardQnaVO vo);
}
