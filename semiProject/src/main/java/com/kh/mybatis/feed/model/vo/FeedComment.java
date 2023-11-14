package com.kh.mybatis.feed.model.vo;

public class FeedComment {
	private int commentNo;
	private String commentText;
	private int feedNo;
	private int userNo;
	
	public FeedComment() {}

	public FeedComment(int commentNo, String commentText, int feedNo, int userNo) {
		super();
		this.commentNo = commentNo;
		this.commentText = commentText;
		this.feedNo = feedNo;
		this.userNo = userNo;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getCommentText() {
		return commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
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
		return "FeedComment [commentNo=" + commentNo + ", commentText=" + commentText + ", feedNo=" + feedNo
				+ ", userNo=" + userNo + "]";
	}
	
	
}
