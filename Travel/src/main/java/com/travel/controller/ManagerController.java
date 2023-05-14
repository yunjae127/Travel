package com.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.travel.dto.ChartResponse;
import com.travel.dto.ChartResponseSeason;
import com.travel.service.ManagerService;

@RestController
@RequestMapping("/api/manager")
public class ManagerController {

	@Autowired
	private ManagerService managerService;
	
	@GetMapping("/product-total")
	public ChartResponse productTotal(){
		System.out.println("=======================================+++++++++++++");
		
		ChartResponse list = managerService.productTotal();
		
		System.out.println(list);
		
		return list; 
		 
		
	}
	
	@GetMapping("/product-totalSeason")
	public ChartResponseSeason productTotalSeason() {
		
		ChartResponseSeason list = managerService.productTotalSeason();
		
		return list;
		
	}
	
	
	
	
}
