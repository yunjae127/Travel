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

@RestController
public class HotelController {

	@Autowired
	private HotelService hotelService;

	
	@PostMapping("/hotelsaveBoard/new")
	public String insertHotel(HotelVO vo) { 

		ImageListVO ivo = new ImageListVO();
		ivo.setImage_Name(vo.getImage_Name());
		ivo.setImage_New_Name(vo.getImage_New_Name());
		ivo.setImage_Size(vo.getImage_Size()); 
		
		int result1 = hotelService.insertHotel(vo);    
		int result2 = hotelService.insertImage(ivo);
		
		return "ok";
		 
		
	}; 
	
	@GetMapping("/hotelsaveBoard")
	public List<HotelVO> selectAllHotel(HotelVO vo){
		
		List<HotelVO> list = hotelService.selectALLHotel(vo);
		System.out.println(list);
		return list; 
	}
	
	@DeleteMapping(value="hotelsaveBoard/{hotel_Name}", produces = "application/json; charset=utf8")
	public void hotelDelete(@PathVariable String hotel_Name){
		
		System.out.println(hotel_Name);
		hotelService.hotelDelete(hotel_Name); 
	}
	
	@GetMapping("/test")
	public String test() {
		return "test";
	}
	
}
