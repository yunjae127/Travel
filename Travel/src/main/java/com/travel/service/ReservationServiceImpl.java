package com.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.domain.BookingVO;
import com.travel.repository.ReservationDAOImpl;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	private ReservationDAOImpl reservationDAO;
	
	@Override
	public Integer reservationInsert(BookingVO vo) {
		
		return reservationDAO.reservationInsert(vo);
		
	}

	@Override
	public void reservationDelete(String booking_Id) {
		reservationDAO.reservationDelete(booking_Id);
		

	}

	@Override
	public List<BookingVO> bookingList(BookingVO vo) {
		
		return reservationDAO.bookingList(vo);
	} 
 
	@Override
	public void CompanionDelete(String companion_Num) {
		reservationDAO.CompanionDelete(companion_Num);
		
	}

	@Override
	public void updateTotalUsage(BookingVO vo) {
		reservationDAO.updateTotalUsage(vo);
		
	}

}
