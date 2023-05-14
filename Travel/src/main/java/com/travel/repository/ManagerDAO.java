package com.travel.repository;

import java.util.List;

import com.travel.dto.ChartResponse;
import com.travel.dto.ChartResponseSeason;

public interface ManagerDAO {
	/*
	 * List<BookingVO> productTotal(BookingVO vo);
	 */
	ChartResponse productTotal();

	ChartResponseSeason productTotalSeason(); 
		
		 

}
