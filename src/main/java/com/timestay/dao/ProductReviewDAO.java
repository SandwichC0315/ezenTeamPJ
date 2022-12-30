package com.timestay.dao;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;;


//IOC �����̳ʿ� BoardDAO�� ��ü�� ����
@Repository //�ý��� �ܺη� �����ؼ� ������ ��û, ���� ���� ������ �ϴ� ��ü ������̼�
public class ProductReviewDAO {
	
	@Autowired //Ÿ���� ������� ���� ����
	private SqlSession sqlSession;

	public List<ProductReviewVO> Review(int Pidx)
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.selectList("com.timestay.mapper.ProductMapper.Review",Pidx);
	}
	public int InsertReview(ProductReviewVO vo)
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.insert("com.timestay.mapper.ProductMapper.InsertReview",vo);
	}	
	public int SelectPidx(int Pidx) {
		
		
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.selectOne("com.timestay.mapper.ProductMapper.SelectPidx",Pidx);
	}
	public ProductReviewVO AvgRscore(int Pidx) {
		
		//return sqlSession.selectOne(statement, parameter)
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.selectOne("com.timestay.mapper.ProductMapper.AvgRscore",Pidx);
	}
	public int ProductReviewModify(ProductReviewVO rvo) {
		
		//return sqlSession.selectOne(statement, parameter)
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.update("com.timestay.mapper.ProductMapper.ProductReviewModify",rvo);
	}
	public ProductReviewVO SelectRidx(int Ridx) {
		
		//return sqlSession.selectOne(statement, parameter)
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.selectOne("com.timestay.mapper.ProductMapper.SelectRidx",Ridx);
	}
	public int ProductReviewDelete(int Ridx) {
		
		return sqlSession.update("com.timestay.mapper.ProductMapper.ProductReviewDelete", Ridx);
	}
}
