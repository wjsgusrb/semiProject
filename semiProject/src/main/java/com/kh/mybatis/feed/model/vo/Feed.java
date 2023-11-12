package com.kh.mybatis.feed.model.vo;

import java.sql.Date;

import oracle.sql.NUMBER;

public class Feed {
	private int feedNo;
	private int userNo;
	private String feedText;
	private Date updateDate;
	private Date deleteDate;
	
	public Feed () {}

	public Feed(int feedNo, int userNo, String feedText, Date updateDate, Date deleteDate) {
		super();
		this.feedNo = feedNo;
		this.userNo = userNo;
		this.feedText = feedText;
		this.updateDate = updateDate;
		this.deleteDate = deleteDate;
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

	public String getFeedText() {
		return feedText;
	}

	public void setFeedText(String feedText) {
		this.feedText = feedText;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Date getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(Date deleteDate) {
		this.deleteDate = deleteDate;
	}

	@Override
	public String toString() {
		return "Feed [feedNo=" + feedNo + ", userNo=" + userNo + ", feedText=" + feedText + ", updateDate=" + updateDate
				+ ", deleteDate=" + deleteDate + "]";
	}
	
	
}
