package com.travel.service;

import java.util.List;

import com.travel.domain.ProductLisVO;

public interface ProductLisService {

	Integer insertProduct(ProductLisVO vo);

	List<ProductLisVO> getProductList();

}
