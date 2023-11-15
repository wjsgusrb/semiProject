package com.kh.mybatis.chart.model.dao;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.chart.model.vo.Chart;



public class ChartDao {

	public ArrayList<Chart> selectTodayExList(SqlSession sqlSession,int userNo) {	
		Calendar calendar = Calendar.getInstance();
		String nowMonth = calendar.get(Calendar.YEAR) +"-"+ (calendar.get(Calendar.MONTH) + 1);
		System.out.print(nowMonth);
		HashMap map = new HashMap();
		map.put("userNo", userNo);
		map.put("nowMonth",nowMonth);
		System.out.print(map.get("userNo"));
		System.out.print(map.get("nowMonth"));
		
		return (ArrayList)sqlSession.selectList("chartMapper.selectTodayExList",map);
	}
	
	public int insertExInfo(SqlSession sqlSession,Chart ex) {
		return sqlSession.insert("chartMapper.insertExInfo", ex);
	}
	
	public int UpdateChartInfo(SqlSession sqlSession,Chart ch) {
		Calendar calendar = Calendar.getInstance();
		String nowMonth = calendar.get(Calendar.YEAR) +"-"+ (calendar.get(Calendar.MONTH) + 1) +"-"+
				calendar.get(Calendar.DATE);
		System.out.println(nowMonth+"222222222222");
		HashMap map = new HashMap();
		map.put("userNo", ch.getUserNo());
		map.put("nowMonth",nowMonth);
		map.put("exChartTarget", ch.getExChartTarget());
		map.put("exChartTime",ch.getExChartTime());
		return sqlSession.update("chartMapper.UpdateChartInfo", map);
	}
	
	
}
