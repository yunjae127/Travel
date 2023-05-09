package com.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductViewDetailsController {
      
   
	@RequestMapping("/home.do")
	public String Home() {
		
		return "home";
	} 
	
   @RequestMapping("/ProductViewDetails1.do")
   public void ViewPage1() {

   }
   @RequestMapping("/ProductViewDetails2.do")
   public void ViewPage2() {

   }
   @RequestMapping("/ProductViewDetails3.do")
   public void ViewPage3() {

   }
   @RequestMapping("/ProductViewDetails4.do")
   public void ViewPage4() {

   }
   @RequestMapping("/ProductViewDetails5.do")
   public void ViewPage5() {

   }
   @RequestMapping("/ProductViewDetails6.do")
   public void ViewPage6() {
   }
   @RequestMapping("/question.do")
   public void ViewPage7() {
   }
   @RequestMapping("/mypage.do")
   public void ViewPage8() {
   }
   @RequestMapping("/packageAll.do")
   public void ViewPage9() {
   }
   @RequestMapping("/hotellist.do")
   public void ViewPage10() {
   }
   @RequestMapping("/newYorkHotel.do")
   public void hotelPage1() {
   } 
   @RequestMapping("/Reservation.do")
   public void Reservation() {
   } 
   @RequestMapping("/goldCostHotel.do")
   public void hotelView1() {

   } @RequestMapping("/californiaHotel.do")
   public void hotelView2() {

   } @RequestMapping("/maldiveHotel.do")
   public void hotelView3() {

   } @RequestMapping("/hongkongHotel.do")
   public void hotelView4() {

   } 
   
}