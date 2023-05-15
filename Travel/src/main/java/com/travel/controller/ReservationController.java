package com.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.travel.domain.BookingVO;
import com.travel.service.ReservationService;

@RestController
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	@PostMapping("/reservationInsert.do")
	public Integer reservationInsert(BookingVO vo) {
		System.out.println(">>>>>>>>>>" + vo.toString());
		int result = reservationService.reservationInsert(vo);
		reservationService.updateTotalUsage(vo);
		
		return result;
	}
 
}
