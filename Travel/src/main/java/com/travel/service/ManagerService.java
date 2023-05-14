package com.travel.service;

import com.travel.dto.ChartResponse;
import com.travel.dto.ChartResponseSeason;


public interface ManagerService {

	ChartResponse productTotal();

	ChartResponseSeason productTotalSeason();

}
