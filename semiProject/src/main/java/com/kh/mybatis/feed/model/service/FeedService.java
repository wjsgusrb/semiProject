package com.kh.mybatis.feed.model.service;

import java.util.ArrayList;

import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.feed.model.vo.Feed;

public interface FeedService {
	
	// 피드 리스트 불러오기
	public int selectListCount();
	ArrayList<Feed> selectList(PageInfo pi);
}
