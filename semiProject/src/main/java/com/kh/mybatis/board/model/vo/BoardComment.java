package com.kh.mybatis.board.model.vo;

public class BoardComment {

	 private int boardCommentNo;
	 private String boardCommentContent;
	 private int boardNo;
	 private String userNo; // userName을 불러옴
	
	 public BoardComment() {}

	public BoardComment(int boardCommentNo, String boardCommentContent, int boardNo, String userNo) {
		super();
		this.boardCommentNo = boardCommentNo;
		this.boardCommentContent = boardCommentContent;
		this.boardNo = boardNo;
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

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "BoardComment [boardCommentNo=" + boardCommentNo + ", boardCommentContent=" + boardCommentContent
				+ ", boardNo=" + boardNo + ", userNo=" + userNo + "]";
	}
	
	 
	 
}
