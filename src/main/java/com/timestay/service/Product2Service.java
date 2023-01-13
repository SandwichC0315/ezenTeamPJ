package com.timestay.service;

import java.util.List;

import com.timestay.vo.ProductVO2;
import com.timestay.vo.Criteria;


public interface Product2Service {

	public List<ProductVO2> list(Criteria cri);
	
	public int count();
	
	public int delete(int pidx);
	
	public int insertProduct(ProductVO2 vo);
	
	public ProductVO2 selectProduct(int pidx);
	
	public int updateProduct(ProductVO2 vo);
}
