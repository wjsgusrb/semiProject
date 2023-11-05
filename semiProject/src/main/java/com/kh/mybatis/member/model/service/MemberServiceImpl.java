package com.kh.mybatis.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.common.template.Template;
import com.kh.mybatis.member.model.dao.MemberDao;
import com.kh.mybatis.member.model.vo.Member;

public class MemberServiceImpl {
	
	private MemberDao mDao = new MemberDao();
	
	public int insertMember(Member m) {
	
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.insertmember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}
	
	

}
