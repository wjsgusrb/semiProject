package com.kh.mybatis.board.model.vo;

import java.sql.Date;

public class Board {
	
	
	 private int exboardNo;
	 private int userNo;
	 private String exboardTitle;
	 private String exboardText;
	 private String exboardCategory;
	 private Date updateDate;
	 private Date deleteDate;
	 private int boardCount;
	 
	 public Board() {}

	 
	public Board(int exboardNo, int userNo, String exboardTitle, String exboardText, String exboardCategory,
			Date updateDate, Date deleteDate, int boardCount) {
		super();
		this.exboardNo = exboardNo;
		this.userNo = userNo;
		this.exboardTitle = exboardTitle;
		this.exboardText = exboardText;
		this.exboardCategory = exboardCategory;
		this.updateDate = updateDate;
		this.deleteDate = deleteDate;
		this.boardCount = boardCount;
	}


	public int getExboardNo() {
		return exboardNo;
	}

	public void setExboardNo(int exboardNo) {
		this.exboardNo = exboardNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getExboardTitle() {
		return exboardTitle;
	}

	public void setExboardTitle(String exboardTitle) {
		this.exboardTitle = exboardTitle;
	}

	public String getExboardText() {
		return exboardText;
	}

	public void setExboardText(String exboardText) {
		this.exboardText = exboardText;
	}

	public String getExboardCategory() {
		return exboardCategory;
	}

	public void setExboardCategory(String exboardCategory) {
		this.exboardCategory = exboardCategory;
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

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}


	@Override
	public String toString() {
		return "Board [exboardNo=" + exboardNo + ", userNo=" + userNo + ", exboardTitle=" + exboardTitle
				+ ", exboardText=" + exboardText + ", exboardCategory=" + exboardCategory + ", updateDate=" + updateDate
				+ ", deleteDate=" + deleteDate + ", boardCount=" + boardCount + "]";
	}
	 
	 
	 
	 
	 
	 
	 
	 
}
