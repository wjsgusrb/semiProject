package com.kh.mybatis.chart.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.chart.model.dao.ChartDao;
import com.kh.mybatis.chart.model.vo.Chart;
import com.kh.mybatis.common.template.Template;

public class ChartServiceImpl implements ChartService {

	@Override
	public ArrayList<Chart> selectTodayExList(String userId) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Chart> exList = new ChartDao().selectTodayExList(sqlSession,userId);
		sqlSession.close();
		return exList;
	}

	@Override
	public int insertExInfo(Chart ex) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = new ChartDao().insertExInfo(sqlSession,ex);
		return 0;
	}


}
