package com.travel.repository;

import java.util.List;

import com.travel.domain.HotelVO;
import com.travel.domain.ImageListVO;

public interface HotelDAO {

	public Integer insertHotel(HotelVO vo);

	List<HotelVO> hotellist(HotelVO vo);

	HotelVO getHotel(HotelVO vo);

	Integer insertImage(ImageListVO ivo);

	List<HotelVO> selectALLHotel(HotelVO vo);

	void hotelDelete(String hotel_Name);

	
 
}
