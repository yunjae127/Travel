package com.travel.service;

import java.util.List;

import com.travel.domain.HotelVO;
import com.travel.domain.ImageListVO;

public interface HotelService {

	Integer insertHotel(HotelVO vo);


	Integer insertImage(ImageListVO ivo);
	
	List<HotelVO> hotellist(HotelVO vo);

	HotelVO getHotel(HotelVO vo);


	List<HotelVO> selectALLHotel(HotelVO vo);


	void hotelDelete(String hotel_Name);



}
