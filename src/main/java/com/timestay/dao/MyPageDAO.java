package com.timestay.dao;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;
import com.timestay.vo.ShoppingCartVO;;


//IOC 컨테이너에 BoardDAO를 객체로 생성
@Repository //시스템 외부로 연결해서 데이터 요청, 응답 관리 역할을 하는 객체 어노테이션
public class MyPageDAO {
	
	@Autowired //타입을 기반으로 의존 주입
	private SqlSession sqlSession;



	public int ShoppingCart(ShoppingCartVO Svo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("com.timestay.mapper.MyPageMapper.ShoppingCart", Svo);
	}
	public List<ShoppingCartVO> ShoppingList(int Midx) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("com.timestay.mapper.MyPageMapper.ShoppingList", Midx);
	}	

}
