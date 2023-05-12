package com.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.travel.domain.ProductLisVO;
import com.travel.service.ProductLisService;

@RestController
public class ProductLisController {
	
	@Autowired
	private ProductLisService productLisService;
	
	@PostMapping("/saveProductLis/new")
	public String insertProduct(ProductLisVO vo) {
		
		System.out.println(vo.getProduct_Name());
		int result = productLisService.insertProduct(vo);
		System.out.println(">>>>" + result);
		if(result==1) {
			return "Ok";
		}else { 
		return "error";
		}
		
	}
	
	@GetMapping("/saveProductLis")
	public List<ProductLisVO> ProductList(){
		
			List<ProductLisVO> list = productLisService.getProductList();
			System.out.println(list);
			return list;
	}
	
 
	
}
