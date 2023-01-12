package com.timestay.dao;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;;


//IOC �����̳ʿ� BoardDAO�� ��ü�� ����
@Repository //�ý��� �ܺη� �����ؼ� ������ ��û, ���� ���� ������ �ϴ� ��ü ������̼�
public class ProductDAO {
	
	@Autowired //Ÿ���� ������� ���� ����
	private SqlSession sqlSession;

	public List<ProductVO> ProductList1()
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList1");
	}
	public List<ProductVO> ProductList2()
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList2");
	}
	public List<ProductVO> ProductList3()
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList3");
	}
	public List<ProductVO> ProductList4()
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList4");
	}
	public List<ProductVO> ProductList5()
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList5");
	}
	public List<ProductVO> ProductList6()
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList6");
	}
	public List<ProductVO> ProductList7()
	{
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList7");
	}
	public ProductVO selectOne(int Pidx) {
		
		
		//mybatis�� ����Ͽ� TB_BoardNotice ������ ��� ��ȸ�Ͽ� ��ȯ
		return sqlSession.selectOne("com.timestay.mapper.ProductMapper.selectOne",Pidx);
	}
	

}
