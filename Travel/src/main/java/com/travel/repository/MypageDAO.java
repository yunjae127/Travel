package com.travel.repository;

import java.util.List;

import com.travel.domain.ReviewVO;

public interface MypageDAO {

	
	List<ReviewVO> selectReview(String id);
}
