package com.timestay.dao;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.service.BoardNoticeService;
import com.timestay.service.BoardNoticeServiceImpl;
import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.Criteria;;


//IOC �����̳ʿ� BoardDAO�� ��ü�� ����
@Repository //�ý��� �ܺη� �����ؼ� ������ ��û, ���� ���� ������ �ϴ� ��ü ������̼�
public class BoardNoticeDAO {
	
	@Autowired //Ÿ���� ������� ���� ����
	private SqlSession sqlSession;

	public List<BoardNoticeVO> list(Criteria cri)
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.selectList("com.timestay.mapper.boardNoticeMapper.test", cri);
	}
	

	public BoardNoticeVO selectOne(int BNidx)
	{
		return sqlSession.selectOne("com.timestay.mapper.boardNoticeMapper.selectOne", BNidx);
	}
	
	public int update(BoardNoticeVO vo)
	{
		return sqlSession.update("com.timestay.mapper.boardNoticeMapper.update", vo);
	}
	
	public int updateNoticeHit(int BNidx)
	{
		return sqlSession.update("com.timestay.mapper.boardNoticeMapper.updateNoticeHit", BNidx);
	}
	
	public int insertNotice(BoardNoticeVO vo)
	{
		return sqlSession.insert("com.timestay.mapper.boardNoticeMapper.insertNotice", vo);
	}
	

	public int count(Criteria cri)
	{
		return sqlSession.selectOne("com.timestay.mapper.boardNoticeMapper.count");
	}
	
	public int delete(int BNidx)
	{
		return sqlSession.update("com.timestay.mapper.boardNoticeMapper.delete", BNidx);
	}
}
