package com.timestay.dao;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.BoardFaqVO;




//IOC �����̳ʿ� BoardDAO�� ��ü�� ����
@Repository //�ý��� �ܺη� �����ؼ� ������ ��û, ���� ���� ������ �ϴ� ��ü ������̼�
public class BoardFaqDAO {
	
	@Autowired //Ÿ���� ������� ���� ����
	private SqlSession sqlSession;

	public List<BoardFaqVO> list()
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.selectList("com.timestay.mapper.boardFaqMapper.test");
	}
	
	public int insertFaq(BoardFaqVO vo) {
		return sqlSession.insert("com.timestay.mapper.boardFaqMapper.insertFaq", vo);
	}
	

}
