package com.travel.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.domain.HotelVO;
import com.travel.domain.ImageListVO;

@Repository("hotelDAO")
public class HotelDAOImpl implements HotelDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Integer insertHotel(HotelVO vo) { 
		return sqlSession.insert("hotelDAO.insertHotel",vo); 
		
	}

	@Override
	public Integer insertImage(ImageListVO ivo) {  
		return sqlSession.insert("hotelDAO.insertImage",ivo);
	}


	
	@Override
	public List<HotelVO> hotellist(HotelVO vo) {  
		return sqlSession.selectList("hotelDAO.hotellist",vo);
	}
	@Override
	public HotelVO getHotel(HotelVO vo) {
		 
		return sqlSession.selectOne("hotelDAO.getHotel",vo) ;
	} 
	@Override
	public List<HotelVO> selectALLHotel(HotelVO vo) { 
		return sqlSession.selectList("hotelDAO.selectAllHotel",vo);
	} 
	@Override
	public void hotelDelete(String hotel_Name) {

		sqlSession.delete("hotelDAO.hotelDelete", hotel_Name);
		
	}



}
