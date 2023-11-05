package com.kh.mybatis.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.member.model.vo.Member;

public class MemberDao {
	
	public int insertmember(SqlSession sqlSession, Member m) {

		int result = sqlSession.insert("memberMapper.insertMember", m);
		return result;
	}
	

}
