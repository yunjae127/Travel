package com.travel.service;

import java.util.List;

import com.travel.domain.ImageListVO;
import com.travel.domain.ReviewVO;

public interface ReviewService {

	void insertReview(ReviewVO vo);

	List<ReviewVO> selectReview(ReviewVO vo);

	ReviewVO reviewGetPage(ReviewVO vo);

	Integer insertImage(ImageListVO ivo);

	void readCount(ReviewVO vo);

	List<ReviewVO> selectTopReview(ReviewVO vo);

	List<ReviewVO> reviewMainList();

	void reviewModify(ReviewVO vo);

	void reviewDelete(ReviewVO vo);

}
