package com.travel.service;

import java.util.List;

import com.travel.domain.ImageListVO;
import com.travel.domain.ProductLisVO;

public interface ProductLisService {

	Integer insertProduct(ProductLisVO vo);

	List<ProductLisVO> getProductList();
	
	void deleteProduct(String product_Id);

	List<ProductLisVO> productMainList();

	Integer insertImage(ImageListVO ivo);

	ProductLisVO getProduct(ProductLisVO vo);

	List<ProductLisVO> subproduct(ProductLisVO vo);


}
