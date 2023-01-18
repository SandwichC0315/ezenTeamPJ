package com.timestay.dao;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.MemberVO;
import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;
import com.timestay.vo.ShoppingCartVO;;


//IOC �����̳ʿ� BoardDAO�� ��ü�� ����
@Repository //�ý��� �ܺη� �����ؼ� ������ ��û, ���� ���� ������ �ϴ� ��ü ������̼�
public class ShoppingDAO {
	
	@Autowired //Ÿ���� ������� ���� ����
	private SqlSession sqlSession;



	public int ShoppingCart(ShoppingCartVO Svo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("com.timestay.mapper.ShoppingMapper.ShoppingCart", Svo);
	}
	public List<ShoppingCartVO> ShoppingList(int Midx) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("com.timestay.mapper.ShoppingMapper.ShoppingList", Midx);
	}	
	public int ShoppingCartDelete(int Sidx) {
		// TODO Auto-generated method stub
		return sqlSession.delete("com.timestay.mapper.ShoppingMapper.ShoppingCartDelete", Sidx);
	}
	public int ShoppingCartModify(ShoppingCartVO Svo) {
		
		return sqlSession.update("com.timestay.mapper.ShoppingMapper.ShoppingCartModify", Svo);
	}
	public List<ShoppingCartVO> ShoppingCartPidx(ShoppingCartVO Svo ) {
		
		return sqlSession.selectList("com.timestay.mapper.ShoppingMapper.ShoppingCartPidx", Svo);
	}
	public MemberVO selectUser(int Midx) {
		return sqlSession.selectOne("com.timestay.mapper.ShoppingMapper.selectUser", Midx);
	}
}
