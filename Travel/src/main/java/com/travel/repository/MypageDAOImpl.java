package com.travel.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.domain.ReviewVO;

@Repository("mypageDAO")
public class MypageDAOImpl implements MypageDAO{

	@Autowired
	private SqlSessionTemplate sqlSesion;

	public List<ReviewVO> selectReview(String id) {
		
 		return sqlSesion.selectList("mypageDAO.selectReview", id);
 		
	}
	
	
	
	
	
}
