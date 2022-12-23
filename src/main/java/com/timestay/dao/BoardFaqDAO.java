package com.timestay.dao;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.BoardFaqVO;
import com.timestay.vo.Criteria;


//IOC �����̳ʿ� BoardDAO�� ��ü�� ����
@Repository //�ý��� �ܺη� �����ؼ� ������ ��û, ���� ���� ������ �ϴ� ��ü ������̼�
public class BoardFaqDAO {
	
	@Autowired //Ÿ���� ������� ���� ����
	private SqlSession sqlSession;

	public List<BoardFaqVO> list(Criteria cri)
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.selectList("com.timestay.mapper.boardFaqMapper.selectList", cri);
	}
	
	public int countBoardList(){
	    return sqlSession.selectOne("com.timestay.mapper.boardFaqMapper.countBoardList");
	}

	
	public int insertFaq(BoardFaqVO vo) {
		return sqlSession.insert("com.timestay.mapper.boardFaqMapper.insertFaq", vo);
	}
	
	public int deleteFaq(int bfidx) {
		return sqlSession.delete("com.timestay.mapper.boardFaqMapper.deleteFaq", bfidx);
	}
	
	public BoardFaqVO selectOne(int BFidx) {
		return sqlSession.selectOne("com.timestay.mapper.boardFaqMapper.selectOne" , BFidx );
	}
	
	public int modifyFaq(BoardFaqVO vo) {
		return sqlSession.update("com.timestay.mapper.boardFaqMapper.modifyFaq", vo);
		
	}
	
	
	

}
