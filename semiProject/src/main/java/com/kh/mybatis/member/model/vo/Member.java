package com.kh.mybatis.member.model.vo;

import java.sql.Date;

import oracle.sql.NUMBER;

public class Member {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String userAddress;
	private String profileImg;
	private Date enrollDate;
	private String deleteCheck;
	private String statusMsg;
	
	public Member () {}

	public Member(int userNo, String userId, String userPwd, String userName, String userAddress, String profileImg,
			Date enrollDate, String deleteCheck, String statusMsg) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userAddress = userAddress;
		this.profileImg = profileImg;
		this.enrollDate = enrollDate;
		this.deleteCheck = deleteCheck;
		this.statusMsg = statusMsg;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getDeleteCheck() {
		return deleteCheck;
	}

	public void setDeleteCheck(String deleteCheck) {
		this.deleteCheck = deleteCheck;
	}

	public String getStatusMsg() {
		return statusMsg;
	}

	public void setStatusMsg(String statusMsg) {
		this.statusMsg = statusMsg;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userAddress=" + userAddress + ", profileImg=" + profileImg + ", enrollDate=" + enrollDate
				+ ", deleteCheck=" + deleteCheck + ", statusMsg=" + statusMsg + "]";
	}
	
	
}
