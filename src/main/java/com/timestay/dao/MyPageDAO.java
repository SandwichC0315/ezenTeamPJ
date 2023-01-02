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


//IOC �����̳ʿ� BoardDAO�� ��ü�� ����
@Repository //�ý��� �ܺη� �����ؼ� ������ ��û, ���� ���� ������ �ϴ� ��ü ������̼�
public class MyPageDAO {
	
	@Autowired //Ÿ���� ������� ���� ����
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
