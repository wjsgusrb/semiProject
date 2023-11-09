package com.kh.mybatis.chart.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.chart.model.vo.Chart;
import com.kh.mybatis.common.template.Template;



public class ChartDao {

	public ArrayList<Chart> selectTodayExList(SqlSession sqlSession,String userId) {	
		 return (ArrayList)sqlSession.selectList("chartMapper.selectTodayExList",null);
	}
	
	public int insertExInfo(SqlSession sqlSession,Chart ex) {
		
		return sqlSession.insert("chartMapper.insertExInfo", ex);
	}
	
	
}
