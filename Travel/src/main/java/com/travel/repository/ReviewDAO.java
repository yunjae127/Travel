package com.travel.repository;

import java.util.List;

import com.travel.domain.ImageListVO;
import com.travel.domain.PagingVO;
import com.travel.domain.ReviewVO;

public interface ReviewDAO {

	void insertReview(ReviewVO vo);

	Integer insertImage(ImageListVO ivo);

	List<PagingVO> selectReview(PagingVO vo);
	
	ReviewVO reviewGetPage(ReviewVO vo);

	void readCount(ReviewVO vo);
	
	List<ReviewVO> selectTopReview(ReviewVO vo);
	
	List<ReviewVO> reviewMainList();
	
	void reviewModify(ReviewVO vo);
	
	void reviewDelete(ReviewVO vo);
	
	int countReview();
}
