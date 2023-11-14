package com.kh.mybatis.feed.model.vo;

public class FeedLike {
	private int likeNo;
	private int feedNo;
	private int userNo;
	
	public FeedLike() {}


	public FeedLike(int likeNo, int feedNo, int userNo) {
		super();
		this.likeNo = likeNo;
		this.feedNo = feedNo;
		this.userNo = userNo;
	}


	public int getLikeNo() {
		return likeNo;
	}


	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}


	public int getFeedNo() {
		return feedNo;
	}


	public void setFeedNo(int feedNo) {
		this.feedNo = feedNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	@Override
	public String toString() {
		return "FeedLike [likeNo=" + likeNo + ", feedNo=" + feedNo + ", userNo=" + userNo + "]";
	}
	
	
}
