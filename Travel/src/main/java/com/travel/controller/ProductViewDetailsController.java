package com.travel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.travel.domain.HotelVO;
import com.travel.domain.MemberRegistVO;
import com.travel.service.HotelService;
import com.travel.service.MemberService;

@Controller
public class ProductViewDetailsController {
       
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private MemberService memberService;
	

	@RequestMapping("/home.do")
	public void Home(Model model, HttpSession session) {  
		System.out.println("----------" + session.getAttribute("id"));
		
	List<HotelVO> list = hotelService.hotelMainList(); 
	model.addAttribute("hotelMainList", list); 
 
	}   
	
	 @RequestMapping("/memberinsert.do")
	   public String insertMember(MemberRegistVO vo) {
	      memberService.insertMember(vo);
	      return "popup";
	      
	   }
	   @RequestMapping("/memberdelete.do")
	   public String deleteMember(MemberRegistVO vo) {
	      memberService.deleteMember(vo);
	      //return "customerManager";
	      return "redirect:/customerManager.do";
	   }

	   @RequestMapping("/login.do")
	   public String login(MemberRegistVO vo, HttpSession session, Model m) {
	      MemberRegistVO result = memberService.loginMember(vo);

	      System.out.println(">======" + result);
	      
	      if( result == null) {
	         m.addAttribute("loginerror", "실패");
	         return "home";
	      }else {
	      session.setAttribute("id", result.getMember_Id());}
	      //session.setAttribute("password", result.getMember_Password());
	      
	      return "redirect:/home.do";
	   }
	   @RequestMapping("/logout.do")
	   public String logout(HttpSession session) {
	      session.removeAttribute("id");
	      return "redirect:/home.do";
	   }
	   
	   
	   
	   // 아이디찾기
	      @RequestMapping("/findIidd.do") 
	      public String findIidd(MemberRegistVO vo, Model m) { 
	      MemberRegistVO fff = memberService.findIidd(vo); 
	      if(fff==null){
	         m.addAttribute("error", "없음");
	         return "findId";
	      }else {
	         m.addAttribute("FindIdd", fff.getMember_Id());
	      return "findId";
	      }
	      }


	      // 비밀번호 찾기
	      @RequestMapping("/findPw.do") 
	      public String findPw(MemberRegistVO vo, Model m) {
	         MemberRegistVO fppp = memberService.findPw(vo);
	         if(fppp==null) {
	            m.addAttribute("errortwo", "no");
	            m.addAttribute("modelone", "one");
	            return "findId";
	         }else {
	            m.addAttribute("FindPww", fppp.getMember_Password());
	            m.addAttribute("modelone", "one");
	            return "findId";
	         }
	         
	      }
	   
	   
	   
	   @RequestMapping("/changePw.do")
	   public String changePw(MemberRegistVO vo, String pw_check, Model m) {
	      int changePw = memberService.changePw(vo, pw_check);
	       System.out.println(changePw);
	      m.addAttribute("changePw", changePw);
	      return "findId";
	      
	   }

	   @RequestMapping("/customerManager.do")
	   public void customerManager(MemberRegistVO vo, Model m) {
	      List<MemberRegistVO> list = memberService.getMemberList(vo);
	      m.addAttribute("MemberList", list);
	   }
 
	
	
	@RequestMapping("/manager.do")
	public void manager() {

	}
	
	@RequestMapping("/signUp.do")
	public void signUp() {

	}
	@RequestMapping("/findId.do")
	public void findId() {

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
   
   @RequestMapping("/questionWrite.do")
   public void question() {
   }
   @RequestMapping("/mypage.do")
   public void mypage() {
   }
   @RequestMapping("/packageAll.do")
   public void packageAll() {
   } 
    
   @RequestMapping("/Reservation.do")
   public void Reservation() {
   } 
  
   @RequestMapping("/salesStatus.do")
   public void salesStatus() {
	   
   }
  
   @RequestMapping("/packmana.do")
   public void packmana() {
	   
   }
   
   @RequestMapping("/customerCenter.do")
   public void customerCenter() {
	   
   } 
     
   
   
   
}