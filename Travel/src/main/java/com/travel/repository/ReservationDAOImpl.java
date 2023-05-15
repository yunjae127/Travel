package com.travel.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.domain.BookingVO;

@Repository("reservationDAO")
public class ReservationDAOImpl implements ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public Integer reservationInsert(BookingVO vo) {
		System.out.println("===> Mybatis reservationInsert() 호출");
		return mybatis.insert("ReservationDAO.reservationInsert", vo);
		
	}

	@Override
	public void reservationDelete(String booking_Id) {
		System.out.println("===> Mybatis reservationDelete() 호출");
		mybatis.delete("ReservationDAO.reservationDelete", booking_Id);

	}

	@Override
	public List<BookingVO> bookingList(BookingVO vo) {
		System.out.println("===> Mybatis bookingList() 호출");
		
		return mybatis.selectList("ReservationDAO.bookingList", vo);
	}

 
	@Override
	public void CompanionDelete(String companion_Num) {
		mybatis.delete("ReservationDAO.deleteCompanion", companion_Num);
		
	}

	@Override
	public void updateTotalUsage(BookingVO vo) {
		mybatis.update("ReservationDAO.updateTotalUsage",vo);
		
	}

}
