package com.kh.mybatis.feed.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.common.template.Template;
import com.kh.mybatis.feed.model.dao.FeedDao;
import com.kh.mybatis.feed.model.vo.Feed;
import com.kh.mybatis.feed.model.vo.FeedLike;

public class FeedServiceImpl implements FeedService{
	private FeedDao fDao = new FeedDao();

	@Override
	public int selectListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		int listcount = fDao.selectListCount(sqlSession);
		
		sqlSession.close();
		return listcount;
	}
	
	@Override
	public ArrayList<Feed> selectList(PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Feed> list = fDao.selectList(sqlSession, pi);
		
		sqlSession.close();
		
		return list;
	}

	@Override
	public int countLike(FeedLike like) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = fDao.countLike(sqlSession,like);
		sqlSession.close();
		return result;
	}

	@Override
	public ArrayList<Feed> selectMyFeed(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Feed> fList = fDao.selectMyFeed(sqlSession, userNo);
		sqlSession.close();
		return fList;
	}

}
