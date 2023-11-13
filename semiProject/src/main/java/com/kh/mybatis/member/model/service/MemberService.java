package com.kh.mybatis.member.model.service;

import com.kh.mybatis.member.model.vo.Member;


public interface MemberService  {
	
	public abstract int insertMember(Member m);
	public abstract int updateMember(Member m);
	public abstract int deleteMember(String userId, String userPwd);
	public abstract Member loginMember(Member m);
	public abstract int idCheckMember(String checkId) ;

}
