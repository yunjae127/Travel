package com.travel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.travel.domain.ReviewVO;
import com.travel.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("/mypage.do")
	public void mypage(Model m, HttpSession session) {
	  
		
		
		String id = (String)session.getAttribute("id"); 
		List<ReviewVO> selectReview = mypageService.selectReview(id); 
		
		System.out.println("------------------------>>");
		System.out.println(selectReview);
		
		m.addAttribute("selectReview",  selectReview);
		
	}
	
	
	
}
