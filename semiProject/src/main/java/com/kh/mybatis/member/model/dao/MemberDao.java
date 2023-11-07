package com.kh.mybatis.member.model.dao;

import org.apache.ibatis.session.SqlSession;


import com.kh.mybatis.member.model.vo.Member;

public class MemberDao {
	
	public int insertmember(SqlSession sqlSession, Member m) {

		int result = sqlSession.insert("memberMapper.insertMember", m);
		return result;
	}
	

	//select문 - 로그인한 유저의 정보들을 member객체애 담아서 넘김
	public Member loginMember(SqlSession sqlSession, Member m) {
		System.out.println(m);
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
}
