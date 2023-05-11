package com.travel.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.travel.domain.HotelVO;
import com.travel.domain.ImageListVO;
import com.travel.service.HotelService;

@Controller
public class HotelListController {

	@Autowired
	private HotelService hotelService;
 

	@RequestMapping("/hotellist.do")
	public void hotellist(HotelVO vo, Model model) {
		
		List<HotelVO> list = hotelService.hotellist(vo);
		
		model.addAttribute("hotellist", list);
		
		System.out.println("hotellist.do");
		
	}
	
	@RequestMapping("/getHotel.do")
	public void getHotel(HotelVO vo, Model model) {
		 
		System.out.println(vo.toString());
		
		HotelVO result = hotelService.getHotel(vo);
		model.addAttribute("hotel", result); 
		  
	}

}
