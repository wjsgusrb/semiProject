package com.kh.mybatis.feed.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.feed.model.vo.Feed;
import com.kh.mybatis.feed.model.vo.FeedLike;

public class FeedDao {
	
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("feedMapper.selectListCount");
	}
	
	public ArrayList<Feed> selectList(SqlSession sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		ArrayList<Feed> list = (ArrayList)sqlSession.selectList("feedMapper.selectList", null , rowBounds);
		
		
		return list;
	}
	
	public int countLike(SqlSession sqlSession,FeedLike like) {
		return sqlSession.selectOne("feedMapper.countLike",like);
	}
}
