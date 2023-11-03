package com.kh.mybatis.member.model.service;

import com.kh.mybatis.member.model.vo.Member;

public interface MemberService {
	int insertMember(Member m);
	int updateMember(Member m);
	int deleteMember(Member m);
	Member loginMember(Member m);
}
