package com.kh.mybatis.member.model.vo;

import java.sql.Date;

public class ProfileImg {

	private int profileImgNo;
	private String userNo;
	private String profileUrl;
	private String originName;
	private String changeName;
	private Date deleteImg;
	
	public ProfileImg() {}
	public ProfileImg(int profileImgNo, String userNo, String profileUrl, String originName, String changeName,
			Date deleteImg) {
		super();
		this.profileImgNo = profileImgNo;
		this.userNo = userNo;
		this.profileUrl = profileUrl;
		this.originName = originName;
		this.changeName = changeName;
		this.deleteImg = deleteImg;
	}
	public int getProfileImgNo() {
		return profileImgNo;
	}
	public void setProfileImgNo(int profileImgNo) {
		this.profileImgNo = profileImgNo;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getProfileUrl() {
		return profileUrl;
	}
	public void setProfileUrl(String profileUrl) {
		this.profileUrl = profileUrl;
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
		return "ProfileImg [profileImgNo=" + profileImgNo + ", userNo=" + userNo + ", profileUrl=" + profileUrl
				+ ", originName=" + originName + ", changeName=" + changeName + ", deleteImg=" + deleteImg + "]";
	}
	
}
