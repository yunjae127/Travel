package com.travel.service;

import java.util.List;

import com.travel.domain.BookingVO;
import com.travel.domain.ReviewVO;

public interface MypageService {

	 public List<ReviewVO> selectReview(String id);

	public List<BookingVO> selectBook(String id);

}
