package com.timestay.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timestay.dao.Product2DAO;
import com.timestay.vo.ProductVO2;
import com.timestay.vo.Criteria;

@Service("Product2ServiceImpl")
public class Product2ServiceImpl implements Product2Service{
	
	@Autowired(required=false)
	private Product2DAO product2DAO;

	@Override
	public List<ProductVO2> list(Criteria cri) {
		
		return product2DAO.list(cri);
	}

	@Override
	public int count() {
		return product2DAO.count();
	}

	@Override
	public int delete(int pidx) {
		return product2DAO.delete(pidx);
	}

	@Override
	public int insertProduct(ProductVO2 vo) {
		return product2DAO.insertProduct(vo);
	}

	@Override
	public ProductVO2 selectProduct(int pidx) {
		return product2DAO.selectProduct(pidx);
	}

	@Override
	public int updateProduct(ProductVO2 vo) {
		return product2DAO.updateProduct(vo);
	}

}
