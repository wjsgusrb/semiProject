package com.kh.mybatis.chart.model.service;

import java.util.ArrayList;

import com.kh.mybatis.chart.model.vo.Chart;

public interface ChartService {
	public ArrayList<Chart> selectTodayExList(int UserNo);
	public int insertExInfo(Chart ex);
	int UpdateChartInfo(Chart ch);

	
	
}
