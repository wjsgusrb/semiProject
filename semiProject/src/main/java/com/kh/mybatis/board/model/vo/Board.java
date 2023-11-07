package com.kh.mybatis.board.model.vo;

import java.sql.Date;

public class Board {
	
	
	 private int boardNo;
	 private int userNo;
	 private String boardTitle;
	 private String boardText;
	 private String boardCategory;
	 private Date updateDate;
	 private Date deleteDate;
	 private int boardCount;
	 
	 public Board() {}

	public Board(int boardNo, int userNo, String boardTitle, String boardText, String boardCategory, Date updateDate,
			Date deleteDate, int boardCount) {
		super();
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.boardTitle = boardTitle;
		this.boardText = boardText;
		this.boardCategory = boardCategory;
		this.updateDate = updateDate;
		this.deleteDate = deleteDate;
		this.boardCount = boardCount;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardText() {
		return boardText;
	}

	public void setBoardText(String boardText) {
		this.boardText = boardText;
	}

	public String getBoardCategory() {
		return boardCategory;
	}

	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
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
		return "Board [boardNo=" + boardNo + ", userNo=" + userNo + ", boardTitle=" + boardTitle + ", boardText="
				+ boardText + ", boardCategory=" + boardCategory + ", updateDate=" + updateDate + ", deleteDate="
				+ deleteDate + ", boardCount=" + boardCount + "]";
	}


	 
	 
}
