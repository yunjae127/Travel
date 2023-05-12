package com.travel.repository;

import java.util.List;

import com.travel.domain.ImageListVO;
import com.travel.domain.ReviewVO;

public interface ReviewDAO {

	void insertReview(ReviewVO vo);

	Integer insertImage(ImageListVO ivo);

	List<ReviewVO> selectReview(ReviewVO vo);
	
	ReviewVO reviewGetPage(ReviewVO vo);

	void readCount(ReviewVO vo);
	
	List<ReviewVO> selectTopReview(ReviewVO vo);
	
	List<ReviewVO> reviewMainList();
	
	void reviewModify(ReviewVO vo);
	
	void reviewDelete(ReviewVO vo);
}
