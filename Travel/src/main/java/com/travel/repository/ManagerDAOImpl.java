package com.travel.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.dto.ChartResponse;
import com.travel.dto.ChartResponseSeason;

@Repository("managerDAO")
public class ManagerDAOImpl implements ManagerDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	 
	@Override
	public ChartResponse productTotal() {
		
 		return sqlSession.selectOne("managerDAO.productTotal");
	}
	@Override
	public ChartResponseSeason productTotalSeason() {
		 
		return sqlSession.selectOne("managerDAO.productTotalSeason");
	}

}
