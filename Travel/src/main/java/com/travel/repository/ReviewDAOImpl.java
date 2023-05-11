package com.travel.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertReview(ReviewVO vo) {

		sqlSession.insert("reviewDAO.insertReview",vo);
		
	}
	
	
}
