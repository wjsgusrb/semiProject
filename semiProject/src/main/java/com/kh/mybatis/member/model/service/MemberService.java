package com.kh.mybatis.member.model.service;

import java.util.ArrayList;

import com.kh.mybatis.member.model.vo.Member;
import com.kh.mybatis.member.model.vo.ProfileImg;


public interface MemberService  {
	
	public abstract int insertMember(Member m);
	public abstract int updateMember(Member m);
	public abstract int deleteMember(String userId, String userPwd);
	public abstract Member loginMember(Member m);
	public abstract int idCheckMember(String checkId) ;
	public abstract int insertProfileImg(ProfileImg pImg);
	public abstract int deleteProfileImg();
	public abstract ProfileImg selectProfileImg(int userNo);
	public abstract Member findaPassword(Member m) ;
	ArrayList<Member> selectFriend(int userNo);
}
