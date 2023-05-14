package com.travel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.dto.ChartResponse;
import com.travel.dto.ChartResponseSeason;
import com.travel.repository.ManagerDAOImpl;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	private ManagerDAOImpl managerDAO;
	
	/*
	 * @Override public List<BookingVO> productTotal(BookingVO vo) {
	 * 
	 * 
	 * return managerDAO.productTotal(vo); }
	 */

	@Override
	public ChartResponse productTotal() {
	  
		return managerDAO.productTotal();
	}

	@Override
	public ChartResponseSeason productTotalSeason() {
		 
		return managerDAO.productTotalSeason();
	}

}
