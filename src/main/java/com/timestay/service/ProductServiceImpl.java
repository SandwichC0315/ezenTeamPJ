package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.BoardNoticeDAO;
import com.timestay.dao.ProductDAO;
import com.timestay.dao.ProductReviewDAO;
import com.timestay.vo.BoardNoticeVO;
import com.timestay.vo.ProductReviewVO;
import com.timestay.vo.ProductVO;

//@Service - 구현하고 있는 인터페이스에 대한 구현 객체를 만드는 어노테이션
@Service("ProductServiceImpl")
public class ProductServiceImpl implements ProductService{
	
	@Autowired(required=false)
	private ProductReviewDAO ProductReviewDAO;
	@Autowired(required=false)
	private ProductDAO ProductDAO;


	@Override
	public List<ProductReviewVO> Review(int Pidx) {
		// TODO Auto-generated method stub
		return ProductReviewDAO.Review(Pidx);
	}

	@Override
	public ProductVO selectOne(int Pidx) {
		// TODO Auto-generated method stub
		return ProductDAO.selectOne(Pidx);
	}

	@Override
	public List<ProductVO> ProductList1() {
		// TODO Auto-generated method stub
		return ProductDAO.ProductList1();
	}


	@Override
	public List<ProductVO> ProductList2() {
		// TODO Auto-generated method stub
		return ProductDAO.ProductList2();
	}

	@Override
	public List<ProductVO> ProductList3() {
		// TODO Auto-generated method stub
		return ProductDAO.ProductList3();
	}

	@Override
	public List<ProductVO> ProductList4() {
		// TODO Auto-generated method stub
		return ProductDAO.ProductList4();
	}

	@Override
	public List<ProductVO> ProductList5() {
		// TODO Auto-generated method stub
		return ProductDAO.ProductList5();
	}

	@Override
	public List<ProductVO> ProductList6() {
		// TODO Auto-generated method stub
		return ProductDAO.ProductList6();
	}

	@Override
	public List<ProductVO> ProductList7() {
		// TODO Auto-generated method stub
		return ProductDAO.ProductList7();
	}

	@Override
	public int InsertReview(ProductReviewVO vo) {
		// TODO Auto-generated method stub
		return ProductReviewDAO.InsertReview(vo);
	}

	@Override
	public int SelectPidx(int Pidx) {
		// TODO Auto-generated method stub
		return ProductReviewDAO.SelectPidx(Pidx);
	}

	@Override
	public ProductReviewVO AvgRscore(int Pidx) {
		// TODO Auto-generated method stub
		return ProductReviewDAO.AvgRscore(Pidx);
	}

	@Override
	public int ProductReviewModify(ProductReviewVO rvo) {
		// TODO Auto-generated method stub
		return ProductReviewDAO.ProductReviewModify(rvo);
	}

	@Override
	public ProductReviewVO SelectRidx(int Ridx) {
		// TODO Auto-generated method stub
		return ProductReviewDAO.SelectRidx(Ridx);
	}

	@Override
	public int ProductReviewDelete(int Ridx) {
		// TODO Auto-generated method stub
		return ProductReviewDAO.ProductReviewDelete(Ridx);
	}









}
