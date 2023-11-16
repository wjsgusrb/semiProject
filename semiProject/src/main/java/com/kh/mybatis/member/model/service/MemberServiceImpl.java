package com.kh.mybatis.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.common.template.Template;
import com.kh.mybatis.member.model.dao.MemberDao;
import com.kh.mybatis.member.model.vo.Follow;
import com.kh.mybatis.member.model.vo.Member;
import com.kh.mybatis.member.model.vo.ProfileImg;



public class MemberServiceImpl implements MemberService{
	
	private MemberDao mDao = new MemberDao();
	@Override
	public int insertMember(Member m) {
			SqlSession sqlSession = Template.getSqlSession();
			
			int result = mDao.insertmember(sqlSession, m);
			
			if(result > 0) {
				sqlSession.commit();
			}
			
			sqlSession.close();
			
			return result;
	}

	@Override
	public int updateMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.updateMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
			
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int deleteMember(String userId, String userPwd) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.deleteMember(sqlSession, userId, userPwd);
		if(result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		
		return result;
	}

	@Override
	public Member loginMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
	
		Member loginUser = mDao.loginMember(sqlSession, m);
		
		sqlSession.close();
		return loginUser;
	}

	@Override
	public ArrayList<Member> selectId(String selectId) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Member> list = mDao.selectId(sqlSession, selectId);
		sqlSession.close();
		return list;
	}

		
	
	@Override
	public int idCheckMember(String checkId) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.idCheckMember(sqlSession, checkId);
	
		sqlSession.close();
		return result;
	}

	@Override
	public int sendFrieds(Follow fo) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.sendFrieds(sqlSession, fo);
		if(result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result;
	}

	@Override
	public ArrayList<Member> checkSeedFrieds(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Member> list =  mDao.checkSeedFrieds(sqlSession, userNo);
		sqlSession.close();
		return list;
	}

	@Override
	public int successFriedsPost(Follow fo) {
		SqlSession sqlSession = Template.getSqlSession();
		int result =  mDao.successFriedsPost(sqlSession, fo);
		if(result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result;
	}

	@Override
	public int deleteFriendsPost(Follow fo) {
		SqlSession sqlSession = Template.getSqlSession();
		int result =  mDao.deleteFriendsPost(sqlSession, fo);
		if(result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result;
	}
	
	@Override
	public int insertProfileImg(ProfileImg pImg) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = 0;
		if(pImg.getProfileImgNo() != 0) {
			result = mDao.updateProfileImg(sqlSession, pImg);
		}else {
			result = mDao.insertProfileImg(sqlSession, pImg);
		}
		if(result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result;
	}

	@Override
	public int deleteProfileImg() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ProfileImg selectProfileImg(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ProfileImg pImg = mDao.selectProfileImg(sqlSession, userNo);
	
		sqlSession.close();
		return pImg;
	}
	

	@Override
	public Member findaPassword(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member check = mDao.findaPassword(sqlSession, m);
		
		
		sqlSession.close();
		return check;
	}

	@Override
	public ArrayList<Member> selectFriend(int userNo) {
	SqlSession sqlSession = Template.getSqlSession();
		
	 ArrayList<Member> list = mDao.selectFriend(sqlSession, userNo);
		sqlSession.close();
		return list;
	}
}
