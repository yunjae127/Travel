package com.travel.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSourceExtensionsKt;
import org.springframework.stereotype.Repository;

import com.travel.domain.ImageListVO;
import com.travel.domain.PagingVO;
import com.travel.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertReview(ReviewVO vo) {

		sqlSession.insert("reviewDAO.insertReview",vo);
		
	}
	public Integer insertImage(ImageListVO ivo) {
		 
		return sqlSession.insert("reviewDAO.insertImage",ivo);
	}
	
	public List<PagingVO> selectReview(PagingVO pvo) { 
		
		return sqlSession.selectList("reviewDAO.selectReview",pvo);
	}

	public ReviewVO reviewGetPage(ReviewVO vo) {
		 
		return sqlSession.selectOne("reviewDAO.reviewGetPage",vo);
	}
	public void readCount(ReviewVO vo) {

		sqlSession.update("reviewDAO.readCount",vo);
		
	}
	public List<ReviewVO> selectTopReview(ReviewVO vo) {
		 
		return sqlSession.selectList("reviewDAO.selectTopReview",vo);
		
	}
	public List<ReviewVO> reviewMainList() {
		 
		return sqlSession.selectList("reviewDAO.selectMainList");
	}
	
	public void reviewModify(ReviewVO vo) {
	  
		sqlSession.update("reviewDAO.reviewModify",vo);

		
		
	}
	public void reviewDelete(ReviewVO vo) {

		sqlSession.delete("reviewDAO.reviewDelete",vo);
	}
	public int countReview() {
		 
		return  sqlSession.selectOne("reviewDAO.countReview");
	}



	
	
}
