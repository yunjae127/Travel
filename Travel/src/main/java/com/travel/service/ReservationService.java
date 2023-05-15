package com.travel.service;

import java.util.List;

import com.travel.domain.BookingVO;

public interface ReservationService {
	
	public Integer reservationInsert(BookingVO vo);
	
	public void reservationDelete(String booking_Id);
	
	public List<BookingVO> bookingList(BookingVO vo); 
	
	public void CompanionDelete(String companion_Num);
	 
	public void updateTotalUsage(BookingVO vo);
}
