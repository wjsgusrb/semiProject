package com.kh.mybatis.board.model.vo;

public class BoardComment {

	 private int boardCommentNo;
	 private String boardCommentContent;
	 private int boardNo;
	 private String userName; // userName을 불러옴
	 private int userNo;
	
	 public BoardComment() {}
	 

	public BoardComment(int boardCommentNo, String boardCommentContent, int boardNo, String userName, int userNo) {
		super();
		this.boardCommentNo = boardCommentNo;
		this.boardCommentContent = boardCommentContent;
		this.boardNo = boardNo;
		this.userName = userName;
		this.userNo = userNo;
	}


	public int getBoardCommentNo() {
		return boardCommentNo;
	}

	public void setBoardCommentNo(int boardCommentNo) {
		this.boardCommentNo = boardCommentNo;
	}

	public String getBoardCommentContent() {
		return boardCommentContent;
	}

	public void setBoardCommentContent(String boardCommentContent) {
		this.boardCommentContent = boardCommentContent;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	 
}
