package com.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.domain.HotelVO;
import com.travel.domain.ImageListVO;
import com.travel.repository.HotelDAO;
import com.travel.repository.HotelDAOImpl;

@Service("hotelService")
public class HotelServiceImpl implements HotelService {

	 
	@Autowired
	private HotelDAOImpl hotelDAO; 
	
	@Override
	public Integer insertHotel(HotelVO vo) { 
		
		
		
		return hotelDAO.insertHotel(vo);
		
	}

	@Override
	public List<HotelVO> hotellist(HotelVO vo) { 
		return hotelDAO.hotellist(vo);
	}

	@Override
	public HotelVO getHotel(HotelVO vo) {
		 
		return hotelDAO.getHotel(vo);
		
	}

	@Override
	public Integer insertImage(ImageListVO ivo) {
		
		
		
		return hotelDAO.insertImage(ivo);
	}

	@Override
	public List<HotelVO> selectALLHotel(HotelVO vo) {
		 
		return hotelDAO.selectALLHotel(vo);
	}

	@Override
	public void hotelDelete(String image_Name) {
		
		hotelDAO.hotelDelete(image_Name);
		
	}


	
	
}
 