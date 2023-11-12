package com.kh.mybatis.feed.model.vo;

import java.sql.Date;

import oracle.sql.NUMBER;

public class Feed {
	private int feedNo;
	private String userNo;
	private String feedText;
	private Date updateDate;
	private Date deleteDate;
	private String originName;
	private String changeName;
	private String feedUrl;
	
	
	public Feed () {}


	public Feed(int feedNo, String userNo, String feedText, Date updateDate, Date deleteDate, String originName,
			String changeName, String feedUrl) {
		super();
		this.feedNo = feedNo;
		this.userNo = userNo;
		this.feedText = feedText;
		this.updateDate = updateDate;
		this.deleteDate = deleteDate;
		this.originName = originName;
		this.changeName = changeName;
		this.feedUrl = feedUrl;
	}


	public int getFeedNo() {
		return feedNo;
	}


	public void setFeedNo(int feedNo) {
		this.feedNo = feedNo;
	}


	public String getUserNo() {
		return userNo;
	}


	public void setUserNo(String userNo) {
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


	public String getFeedUrl() {
		return feedUrl;
	}


	public void setFeedUrl(String feedUrl) {
		this.feedUrl = feedUrl;
	}


	@Override
	public String toString() {
		return "Feed [feedNo=" + feedNo + ", userNo=" + userNo + ", feedText=" + feedText + ", updateDate=" + updateDate
				+ ", deleteDate=" + deleteDate + ", originName=" + originName + ", changeName=" + changeName
				+ ", feedUrl=" + feedUrl + "]";
	}


	

	
	
	
}
