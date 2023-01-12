package com.timestay.service;

import java.util.List;

import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.MemberVO;
import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;
import com.timestay.vo.ShoppingCartVO;


public interface ShoppingService {


	int ShoppingCart(ShoppingCartVO Svo);
	List<ShoppingCartVO> ShoppingList(int Midx);
	int ShoppingCartDelete(int Sidx);
	int ShoppingCartModify(ShoppingCartVO Svo);
	List<ShoppingCartVO> ShoppingCartPidx(ShoppingCartVO Svo);
	MemberVO selectUser(int Midx);
}
