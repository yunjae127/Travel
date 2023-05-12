package com.travel.repository;


import java.util.List;

import com.travel.domain.ProductLisVO;

public interface ProductLisDAO {
	
	public Integer insertProduct(ProductLisVO vo) ;		
	
	 
	public void updateProduct(ProductLisVO vo); 		
	
	
	public Integer deleteProduct(String product_Id); 		
	
	
	public List<ProductLisVO> getProductList(); 		 
	
	public List<ProductLisVO> productMainList();
	
	public ProductLisVO getProduct(ProductLisVO vo);
	
	public List<ProductLisVO> subproduct(ProductLisVO vo);
}
