package com.travel.repository;


import java.util.List;

import com.travel.domain.ProductLisVO;

public interface ProductLisDAO {
	
	public Integer insertProduct(ProductLisVO vo) ;		
	
	 
	public void updateProduct(ProductLisVO vo); 		
	
	
	public Integer deleteProduct(Integer product_Id); 		
	
	
	public List<ProductLisVO> getProductList(); 		 
	

}
