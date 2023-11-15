package com.kh.mybatis.feed.model.service;

import java.util.ArrayList;

import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.feed.model.vo.Feed;
import com.kh.mybatis.feed.model.vo.FeedImg;
import com.kh.mybatis.feed.model.vo.FeedLike;

public interface FeedService {
	
	// 피드 리스트 불러오기
	public int selectListCount();
	ArrayList<Feed> selectList(PageInfo pi);
	int countLike(FeedLike like);
	ArrayList<Feed> selectMyFeed(int userNo);
	
	// 피드 등록
	public int insertFeed(Feed f, ArrayList<FeedImg> list);
	
	// 피드 수정
	
	// 피드 삭제
}
