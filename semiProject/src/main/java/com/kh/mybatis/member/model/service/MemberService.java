package com.kh.mybatis.member.model.service;

import java.util.ArrayList;

import com.kh.mybatis.member.model.vo.Member;


public interface MemberService  {
	
	public abstract int insertMember(Member m);
	public abstract int updateMember(Member m);
	public abstract int deleteMember(String userId, String userPwd);
	public abstract Member loginMember(Member m);
	ArrayList<Member> selectId(String selectId);
	public abstract int idCheckMember(String checkId) ;

}
