package com.kh.mybatis.member.model.vo;

public class Follow {

	private int followerUser;
	private int followingUser;
	private int followNo;
	private String status;
	
	

	
public int getFollowerUser() {
		return followerUser;
	}






	public void setFollowerUser(int followerUser) {
		this.followerUser = followerUser;
	}






	public int getFollowingUser() {
		return followingUser;
	}






	public void setFollowingUser(int followingUser) {
		this.followingUser = followingUser;
	}






	public int getFollowNo() {
		return followNo;
	}






	public void setFollowNo(int followNo) {
		this.followNo = followNo;
	}






	public String getStatus() {
		return status;
	}






	public void setStatus(String status) {
		this.status = status;
	}






	@Override
	public String toString() {
		return "Follow [followerUser=" + followerUser + ", following_User=" + followingUser + ", follow_No="
				+ followNo + ", status=" + status + "]";
	}
	

}
