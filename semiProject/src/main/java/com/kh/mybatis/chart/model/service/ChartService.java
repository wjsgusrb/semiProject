package com.kh.mybatis.chart.model.service;

import java.util.ArrayList;

import com.kh.mybatis.chart.model.vo.Chart;

public interface ChartService {
	public ArrayList<Chart> selectTodayExList(String UserId);
	public int insertExInfo();

	
	
}
