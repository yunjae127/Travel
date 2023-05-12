package com.travel.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.travel.domain.ProductLisVO;
import com.travel.repository.ProductLisDAOImpl;

@Service("productLisService")
public class ProductLisServiceImpl implements ProductLisService {

	private ProductLisDAOImpl ProductLisDAO;
	
	@Override
	public Integer insertProduct(ProductLisVO vo) { 
		return ProductLisDAO.insertProduct(vo);
	}

	@Override
	public List<ProductLisVO> getProductList() {
		 
		return ProductLisDAO.getProductList();
	}

}
