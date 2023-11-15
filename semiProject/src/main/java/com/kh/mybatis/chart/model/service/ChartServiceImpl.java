package com.kh.mybatis.chart.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.chart.model.dao.ChartDao;
import com.kh.mybatis.chart.model.vo.Chart;
import com.kh.mybatis.common.template.Template;

public class ChartServiceImpl implements ChartService {

	@Override
	public ArrayList<Chart> selectTodayExList(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Chart> exList = new ChartDao().selectTodayExList(sqlSession,userNo);
		sqlSession.close();
		return exList;
	}

	@Override
	public int insertExInfo(Chart ex) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = new ChartDao().insertExInfo(sqlSession,ex);
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		return result;
	}

	@Override
	public int UpdateChartInfo(Chart ch) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = new ChartDao().UpdateChartInfo(sqlSession,ch);
		if(result > 0) {
			sqlSession.commit();
		}
		return result;
	}


}
