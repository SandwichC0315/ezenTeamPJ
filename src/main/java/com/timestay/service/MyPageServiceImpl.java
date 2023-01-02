package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.timestay.dao.MyPageDAO;
import com.timestay.vo.ShoppingCartVO;

//@Service - 구현하고 있는 인터페이스에 대한 구현 객체를 만드는 어노테이션
@Service("MyPageServiceImpl")
public class MyPageServiceImpl implements MyPageService{
	
	@Autowired(required=false)
	private MyPageDAO MyPageDAO;

	@Override
	public int ShoppingCart(ShoppingCartVO Svo) {
		// TODO Auto-generated method stub
		return MyPageDAO.ShoppingCart(Svo);
	}

	@Override
	public List<ShoppingCartVO> ShoppingList(int Midx) {
		// TODO Auto-generated method stub
		return MyPageDAO.ShoppingList(Midx);
	}













}
