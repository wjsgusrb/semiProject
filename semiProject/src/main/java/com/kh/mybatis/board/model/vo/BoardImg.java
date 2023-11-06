package com.kh.mybatis.board.model.vo;

import java.sql.Date;

public class BoardImg {
	private int boardImgNo;
	private int boardNo;
	private String boardImg;
	private String originName;
	private String changeName;
	private Date deleteDate;
	
	public BoardImg() {}

	public BoardImg(int boardImgNo, int boardNo, String boardImg, String originName, String changeName,
			Date deleteDate) {
		super();
		this.boardImgNo = boardImgNo;
		this.boardNo = boardNo;
		this.boardImg = boardImg;
		this.originName = originName;
		this.changeName = changeName;
		this.deleteDate = deleteDate;
	}

	public int getBoardImgNo() {
		return boardImgNo;
	}

	public void setBoardImgNo(int boardImgNo) {
		this.boardImgNo = boardImgNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardImg() {
		return boardImg;
	}

	public void setBoardImg(String boardImg) {
		this.boardImg = boardImg;
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

	public Date getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(Date deleteDate) {
		this.deleteDate = deleteDate;
	}

	@Override
	public String toString() {
		return "BoardImg [boardImgNo=" + boardImgNo + ", boardNo=" + boardNo + ", boardImg=" + boardImg
				+ ", originName=" + originName + ", changeName=" + changeName + ", deleteDate=" + deleteDate + "]";
	}
	
	
}
