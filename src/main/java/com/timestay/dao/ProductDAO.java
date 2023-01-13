package com.timestay.dao;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;;


//IOC 컨테이너에 BoardDAO를 객체로 생성
@Repository //시스템 외부로 연결해서 데이터 요청, 응답 관리 역할을 하는 객체 어노테이션
public class ProductDAO {
	
	@Autowired //타입을 기반으로 의존 주입
	private SqlSession sqlSession;

	public List<ProductVO> ProductList1()
	{
		//mybatis를 사용하여 TB_BoardNotice 데이터 목록 조회하여 반환

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList1");
	}
	public List<ProductVO> ProductList2()
	{
		//mybatis를 사용하여 TB_BoardNotice 데이터 목록 조회하여 반환

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList2");
	}
	public List<ProductVO> ProductList3()
	{
		//mybatis를 사용하여 TB_BoardNotice 데이터 목록 조회하여 반환

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList3");
	}
	public List<ProductVO> ProductList4()
	{
		//mybatis를 사용하여 TB_BoardNotice 데이터 목록 조회하여 반환

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList4");
	}
	public List<ProductVO> ProductList5()
	{
		//mybatis를 사용하여 TB_BoardNotice 데이터 목록 조회하여 반환

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList5");
	}
	public List<ProductVO> ProductList6()
	{
		//mybatis를 사용하여 TB_BoardNotice 데이터 목록 조회하여 반환

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList6");
	}
	public List<ProductVO> ProductList7()
	{
		//mybatis를 사용하여 TB_BoardNotice 데이터 목록 조회하여 반환

		return sqlSession.selectList("com.timestay.mapper.ProductMapper.ProductList7");
	}
	public ProductVO selectOne(int Pidx) {
		
		
		//mybatis를 사용하여 TB_BoardNotice 데이터 목록 조회하여 반환
		return sqlSession.selectOne("com.timestay.mapper.ProductMapper.selectOne",Pidx);
	}
	

}
