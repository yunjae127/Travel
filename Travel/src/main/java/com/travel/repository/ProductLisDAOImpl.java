package com.travel.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.domain.ImageListVO;
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
	public Integer deleteProduct(String product_Id) {
		System.out.println("===> Mybatis deleteProduct() 호출");
		return mybatis.delete("ProductLisDAO.deleteProduct", product_Id);
	}

	@Override
	public List<ProductLisVO> getProductList() {
		
		System.out.println("===> Mybatis getProductList() 호출");
		return mybatis.selectList("ProductLisDAO.getProductList");
	}

	@Override
	public List<ProductLisVO> productMainList() {
		System.out.println("===> Mybatis productMainList() 호출");
		return mybatis.selectList("ProductLisDAO.productMainList");
	}

	public Integer insertImage(ImageListVO ivo) {
		System.out.println("===> Mybatis insertImage() 호출");
		return mybatis.insert("ProductLisDAO.insertImage", ivo);
	}

	public ProductLisVO getProduct(ProductLisVO vo) {
		System.out.println("===> Mybatis getProductImage() 호출");
		return mybatis.selectOne("ProductLisDAO.getProduct", vo);
	}

	public List<ProductLisVO> subproduct(ProductLisVO vo) {
		System.out.println("===> Mybatis subproduct() 호출");
		return mybatis.selectList("ProductLisDAO.subproduct",vo);
	}

}
