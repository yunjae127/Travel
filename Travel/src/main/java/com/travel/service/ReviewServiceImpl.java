package com.travel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.domain.ReviewVO;
import com.travel.repository.ReviewDAO;
import com.travel.repository.ReviewDAOImpl;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	
	@Autowired
	private ReviewDAOImpl reviewDAO;
	
	@Override
	public void insertReview(ReviewVO vo) {
		
		reviewDAO.insertReview(vo);
	}
}
 