package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.timestay.dao.ShoppingDAO;
import com.timestay.vo.MemberVO;
import com.timestay.vo.ShoppingCartVO;


@Service("ShoppingServiceImpl")
public class ShoppingServiceImpl implements ShoppingService{
	
	@Autowired(required=false)
	private ShoppingDAO ShoppingDAO;

	@Override
	public int ShoppingCart(ShoppingCartVO Svo) {
		// TODO Auto-generated method stub
		return ShoppingDAO.ShoppingCart(Svo);
	}

	@Override
	public List<ShoppingCartVO> ShoppingList(int Midx) {
		// TODO Auto-generated method stub
		return ShoppingDAO.ShoppingList(Midx);
	}

	@Override
	public int ShoppingCartDelete(int Sidx) {
		// TODO Auto-generated method stub
		return ShoppingDAO.ShoppingCartDelete(Sidx);
	}

	@Override
	public int ShoppingCartModify(ShoppingCartVO Svo) {
		// TODO Auto-generated method stub
		return ShoppingDAO.ShoppingCartModify(Svo);
	}


	@Override
	public List<ShoppingCartVO> ShoppingCartPidx(ShoppingCartVO Svo) {
		// TODO ShoppingDAO-generated method stub
		return ShoppingDAO.ShoppingCartPidx(Svo);
	}

	@Override
	public MemberVO selectUser(int Midx) {
		// TODO Auto-generated method stub
		return ShoppingDAO.selectUser(Midx);
	}



	
	
	



















}
