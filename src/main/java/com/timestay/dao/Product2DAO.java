package com.timestay.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.ProductVO2;
import com.timestay.vo.Criteria;


@Repository
public class Product2DAO {
	
	@Autowired
	private SqlSession sqlSession;


	public List<ProductVO2> list(Criteria cri)
	{
		return sqlSession.selectList("com.timestay.mapper.Product2Mapper.getList", cri);
	}
	
	public int count()
	{
		return sqlSession.selectOne("com.timestay.mapper.Product2Mapper.count");
	}
	
	public int delete(int pidx)
	{
		return sqlSession.update("com.timestay.mapper.Product2Mapper.delete", pidx);
	}
	
	public int insertProduct(ProductVO2 vo)
	{
		return sqlSession.insert("com.timestay.mapper.Product2Mapper.insertProduct", vo);
	}
	
	public ProductVO2 selectProduct(int pidx)
	{
		return sqlSession.selectOne("com.timestay.mapper.Product2Mapper.selectProduct", pidx);
	}
	
	public int updateProduct(ProductVO2 vo)
	{
		return sqlSession.update("com.timestay.mapper.Product2Mapper.updateProduct", vo);
	}
}