package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.timestay.dao.MyPageDAO;
import com.timestay.vo.ShoppingCartVO;

//@Service - �����ϰ� �ִ� �������̽��� ���� ���� ��ü�� ����� ������̼�
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
