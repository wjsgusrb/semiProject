package com.kh.mybatis.board.model.vo;

public class Comment {

	 private int exboardCommentNo;
	 private String exboardCommentText;
	 private int exboardNo;
	 private int userNo;
	
	 public Comment() {}

	public Comment(int exboardCommentNo, String exboardCommentText, int exboardNo, int userNo) {
		super();
		this.exboardCommentNo = exboardCommentNo;
		this.exboardCommentText = exboardCommentText;
		this.exboardNo = exboardNo;
		this.userNo = userNo;
	}

	public int getExboardCommentNo() {
		return exboardCommentNo;
	}

	public void setExboardCommentNo(int exboardCommentNo) {
		this.exboardCommentNo = exboardCommentNo;
	}

	public String getExboardCommentText() {
		return exboardCommentText;
	}

	public void setExboardCommentText(String exboardCommentText) {
		this.exboardCommentText = exboardCommentText;
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

	@Override
	public String toString() {
		return "Comment [exboardCommentNo=" + exboardCommentNo + ", exboardCommentText=" + exboardCommentText
				+ ", exboardNo=" + exboardNo + ", userNo=" + userNo + "]";
	}
	 
	 
}
