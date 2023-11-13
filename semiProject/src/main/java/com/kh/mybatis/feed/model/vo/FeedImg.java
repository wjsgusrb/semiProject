package com.kh.mybatis.feed.model.vo;

import java.sql.Date;

import oracle.sql.NUMBER;

public class FeedImg {
	private int feedImgNo;
	private int feedNo;
	private String feedUrl;
	private String originName;
	private String changeName;
	private Date deleteImg;
	
	public FeedImg() {}

	public FeedImg(int feedImgNo, int feedNo, String feedUrl, String originName, String changeName, Date deleteImg) {
		super();
		this.feedImgNo = feedImgNo;
		this.feedNo = feedNo;
		this.feedUrl = feedUrl;
		this.originName = originName;
		this.changeName = changeName;
		this.deleteImg = deleteImg;
	}

	public int getFeedImgNo() {
		return feedImgNo;
	}

	public void setFeedImgNo(int feedImgNo) {
		this.feedImgNo = feedImgNo;
	}

	public int getFeedNo() {
		return feedNo;
	}

	public void setFeedNo(int feedNo) {
		this.feedNo = feedNo;
	}

	public String getFeedUrl() {
		return feedUrl;
	}

	public void setFeedUrl(String feedUrl) {
		this.feedUrl = feedUrl;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public Date getDeleteImg() {
		return deleteImg;
	}

	public void setDeleteImg(Date deleteImg) {
		this.deleteImg = deleteImg;
	}

	@Override
	public String toString() {
		return "FeedImg [feedImgNo=" + feedImgNo + ", feedNo=" + feedNo + ", feedUrl=" + feedUrl + ", originName="
				+ originName + ", changeName=" + changeName + ", deleteImg=" + deleteImg + "]";
	}
	
}
