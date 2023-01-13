package com.timestay.service;

import java.util.List;

import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.MemberVO;
import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;


public interface ProductService {

	public List<ProductReviewVO> Review(int Pidx);
	ProductVO selectOne(int Pidx);
	List<ProductVO> ProductList1();
	List<ProductVO> ProductList2();
	List<ProductVO> ProductList3();
	List<ProductVO> ProductList4();
	List<ProductVO> ProductList5();
	List<ProductVO> ProductList6();
	List<ProductVO> ProductList7();
	int InsertReview(ProductReviewVO vo);
	int SelectPidx(int Pidx);
	ProductReviewVO AvgRscore(int Pidx);
	int ProductReviewModify(ProductReviewVO rvo);
	ProductReviewVO SelectRidx(int Ridx);
	int ProductReviewDelete(int Ridx);
}
