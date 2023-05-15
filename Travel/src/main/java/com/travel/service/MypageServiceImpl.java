package com.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.domain.BookingVO;
import com.travel.domain.ReviewVO;
import com.travel.repository.MypageDAOImpl;

@Service("mypageService")
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDAOImpl mypageDAO; 
	
	@Override
	public List<ReviewVO> selectReview(String id) {
		 
		return mypageDAO.selectReview(id);
	}

	@Override
	public List<BookingVO> selectBook(String id) {
		 
		return mypageDAO.selectBook(id);
	}

}
