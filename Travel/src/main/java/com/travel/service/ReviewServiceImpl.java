package com.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.domain.ImageListVO;
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

	@Override
	public List<ReviewVO> selectReview(ReviewVO vo) {
		 
		return reviewDAO.selectReview(vo);
	}

	@Override
	public List<ReviewVO> selectTopReview(ReviewVO vo) {
		 
		return reviewDAO.selectTopReview(vo);
	}
	
	@Override
	public ReviewVO reviewGetPage(ReviewVO vo) {
		 
		return reviewDAO.reviewGetPage(vo);
	}

	@Override
	public Integer insertImage(ImageListVO ivo) { 
		return reviewDAO.insertImage(ivo);
	}

	@Override
	public void readCount(ReviewVO vo) {

		reviewDAO.readCount(vo);
		
	}

	@Override
	public List<ReviewVO> reviewMainList() {
		 
		return reviewDAO.reviewMainList();
	}

	@Override
	public void reviewModify(ReviewVO vo) { 
		  
		  reviewDAO.reviewModify(vo);
		
	}

	@Override
	public void reviewDelete(ReviewVO vo) {
		
		 reviewDAO.reviewDelete(vo);
		
	}


}
 