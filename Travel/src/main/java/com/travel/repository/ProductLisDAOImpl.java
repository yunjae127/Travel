package com.travel.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.domain.ProductLisVO;

@Repository("ProductLisDAO")
public class ProductLisDAOImpl implements ProductLisDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public Integer insertProduct(ProductLisVO vo) {
		System.out.println("===> Mybatis insertProduct() 호출");
		System.out.println(vo.getProduct_Name());
		return mybatis.insert("ProductLisDAO.insertProduct", vo);
	}

	@Override
	public void updateProduct(ProductLisVO vo) {
		System.out.println("===> Mybatis updateProduct() 호출");
		mybatis.update("ProductLisDAO.updateProduct",vo);
	}

	@Override
	public Integer deleteProduct(Integer product_Id) {
		System.out.println("===> Mybatis deleteProduct() 호출");
		return mybatis.delete("ProductLisDAO.deleteProduct", product_Id);
	}

	@Override
	public List<ProductLisVO> getProductList() {
		
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("ProductLisDAO.getProductList");
	}

}
