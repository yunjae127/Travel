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
	@RequestMapping("/eventProductViewDetails1.do")
	public void eventViewPage1() {

	}
	@RequestMapping("/eventProductViewDetails2.do")
	public void eventViewPage2() {

	}	 
	@RequestMapping("/eventProductViewDetails3.do")
	public void eventViewPage3() {

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
   public void question() {
   }
   @RequestMapping("/mypage.do")
   public void mypage() {
   }
   @RequestMapping("/packageAll.do")
   public void packageAll() {
   }
   @RequestMapping("/hotellist.do")
   public void hotellist() {
   }
   
   @RequestMapping("/bangkokHotel.do")
   public void hotelView1() {
   } 
  
   @RequestMapping("/californiaHotel.do")
   public void hotelView2() {

   } 
   @RequestMapping("/danangHotel.do")
   public void hotelView3() {

   } 
   @RequestMapping("/florenceHotel.do")
   public void hotelView4() {

   } 
   @RequestMapping("/goldCostHotel.do")
   public void hotelView5() {

   } 
   @RequestMapping("/hawaiiHotel.do")
   public void hotelView6() {

   }  
   @RequestMapping("/hongkongHotel.do")
   public void hotelView7() {

   }  
   @RequestMapping("/maldiveHotel.do")
   public void hotelView8() {

   }  
   @RequestMapping("/newYorkHotel.do")
   public void hotelView9() {

   }  
   @RequestMapping("/sydneyHotel.do")
   public void hotelView10() {

   }  
   @RequestMapping("/taipeiHotel.do")
   public void hotelView11() {

   }  
   @RequestMapping("/zurichHotel.do")
   public void hotelView12() {

   }  
   @RequestMapping("/Reservation.do")
   public void Reservation() {
   } 
   @RequestMapping("/reviewPage.do")
   public void reviewPage() {
	   
   }
   @RequestMapping("/reviewWrite.do")
   public void reviewWrite() {
	   
   }
}