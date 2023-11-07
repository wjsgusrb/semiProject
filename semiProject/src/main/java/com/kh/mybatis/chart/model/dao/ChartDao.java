package com.kh.mybatis.chart.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.chart.model.vo.Chart;



public class ChartDao {

	public ArrayList<Chart> selectTodayExList(SqlSession sqlSession,String userId) {	
		 return (ArrayList)sqlSession.selectList("chartMapper.selectTodayExList",null);
	}
	
	
}
