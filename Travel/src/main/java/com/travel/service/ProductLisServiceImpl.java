package com.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.domain.ImageListVO;
import com.travel.domain.ProductLisVO;
import com.travel.repository.ProductLisDAOImpl;

@Service("productLisService")
public class ProductLisServiceImpl implements ProductLisService {
	
	@Autowired
	private ProductLisDAOImpl ProductLisDAO;
	
	@Override
	public Integer insertProduct(ProductLisVO vo) { 
		return ProductLisDAO.insertProduct(vo);
	}

	@Override
	public List<ProductLisVO> getProductList() {
		 
		return ProductLisDAO.getProductList();
	}
	
	public void deleteProduct(String product_Id) {
		
		 ProductLisDAO.deleteProduct(product_Id);
	}

	@Override
	public List<ProductLisVO> productMainList() {
		
		return ProductLisDAO.productMainList();
	}

	@Override
	public Integer insertImage(ImageListVO ivo) {
		return ProductLisDAO.insertImage(ivo); 
		
	}

	@Override
	public ProductLisVO getProduct(ProductLisVO vo) {

		return ProductLisDAO.getProduct(vo);
	}

	@Override
	public List<ProductLisVO> subproduct(ProductLisVO vo) {
		
		return ProductLisDAO.subproduct(vo);
	}

}
