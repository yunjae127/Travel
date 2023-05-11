package com.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.travel.domain.ReviewVO;
import com.travel.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	 @RequestMapping("/reviewPage.do")
	   public void reviewPage() {
		   
	   }
	 @RequestMapping("/reviewWrite.do")
	 public void reviewWrite() {
		 
		 
	 }
	 
	 
	@RequestMapping("/reviewSave.do")
	public void insertReview(ReviewVO vo) {
		
		reviewService.insertReview(vo);
		
	}
	
}
