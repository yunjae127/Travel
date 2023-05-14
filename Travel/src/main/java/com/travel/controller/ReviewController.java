package com.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.travel.domain.ImageListVO;
import com.travel.domain.PagingVO;
import com.travel.domain.ReviewVO;
import com.travel.service.ReviewService;


@Controller  
public class ReviewController {

	@Autowired
	private ReviewService reviewService; 
	
	 @RequestMapping("/reviewWrite.do")
	 public void reviewWrite() { 
		 
	 }   
	  
	 @RequestMapping("/saveReview.do")
		public String insertReview(ReviewVO vo) {
			
			ImageListVO ivo = new ImageListVO();
			ivo.setImage_Name(vo.getImage_Name());
			ivo.setImage_New_Name(vo.getImage_New_Name());
			ivo.setImage_Size(vo.getImage_Size()); 
			
			System.out.println("-------------->"+ vo.toString());
			
			reviewService.insertReview(vo);
			reviewService.insertImage(ivo);
			
			
			return "redirect:/reviewPage.do ";
			
		}
	 
	
	@RequestMapping("/reviewPage.do")
	public void reviewPage(PagingVO pvo,ReviewVO vo, Model model
			,@RequestParam(value="nowPage", required=false)String nowPage
			,@RequestParam(value="cntPerPage", required=false)String cntPerPage){
		
				int total = reviewService.countReview();
				if (nowPage == null && cntPerPage == null) {
					nowPage = "1";
					cntPerPage = "5";
				} else if (nowPage == null) {
					nowPage = "1";
				} else if (cntPerPage == null) { 
					cntPerPage = "5";
				}		
		pvo= new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
				
		List<PagingVO> list = reviewService.selectReview(pvo);
		List<ReviewVO> listTop = reviewService.selectTopReview(vo);
		
		
		model.addAttribute("paging", pvo);
		model.addAttribute("reviewList", list);
		model.addAttribute("reviewListTop", listTop); 
		
	} 
	
	 
	@RequestMapping("/reviewGetPage.do")
	public void reviewGetPage(ReviewVO vo, Model model) {
		
		ReviewVO result = reviewService.reviewGetPage(vo);
		model.addAttribute("review", result);
		
		
		reviewService.readCount(vo);
		
	} 
	
	@RequestMapping("/reviewModify.do")
	public String reviewModify(ReviewVO vo) { 
		
		reviewService.reviewModify(vo); 
		
		return "redirect:/reviewPage.do?review_Num" + vo.getReview_Num(); 	
		
	}
	
	@RequestMapping("/reviewDelete.do")
	public String reviewDelete(ReviewVO vo){
		
		System.out.println(vo.getReview_Num());
		reviewService.reviewDelete(vo);
		
		return "redirect:/reviewPage.do";
	}
	

	
}
