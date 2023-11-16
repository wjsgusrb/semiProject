package com.kh.mybatis.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.member.model.vo.Follow;
import com.kh.mybatis.member.model.vo.Member;
import com.kh.mybatis.member.model.vo.ProfileImg;

public class MemberDao {

	public int insertmember(SqlSession sqlSession, Member m) {
		int result = sqlSession.insert("memberMapper.insertMember", m);
		return result;
	}

	//select문 - 로그인한 유저의 정보들을 member객체애 담아서 넘김
	public Member loginMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}

	public int updateMember(SqlSession sqlSession, Member m) {
		int result = sqlSession.update("memberMapper.updateMember", m);
		return result;
	}

	public int deleteMember(SqlSession sqlSession, String userId, String userPwd) {
		int result = sqlSession.update("memberMapper.deleteMember");
		return result;
	}

	public int idCheckMember(SqlSession sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.idCheckMember", checkId);
	}

	public int insertProfileImg(SqlSession sqlSession, ProfileImg pImg) {
		return sqlSession.insert("memberMapper.insertProfileImg", pImg);
	}

	public int updateProfileImg(SqlSession sqlSession, ProfileImg pImg) {
		return sqlSession.update("memberMapper.updateProfileImg", pImg);
	}
	public ProfileImg selectProfileImg(SqlSession sqlSession, int userNo) {
		return sqlSession.selectOne("memberMapper.selectProfileImg", userNo);
	}
	
	public ArrayList<Member> selectId(SqlSession sqlSession, String selectId ) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectId",selectId);
	}

	public int sendFrieds(SqlSession sqlSession, Follow fo) {
		return sqlSession.insert("memberMapper.sendFrieds", fo);
	}
	
	public ArrayList<Member> checkSeedFrieds(SqlSession sqlSession, int userNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.checkSeedFrieds", userNo);
	}

	public int successFriedsPost(SqlSession sqlSession, Follow fo) {
		return sqlSession.update("memberMapper.successFriedsPost", fo);
	}
	
	public int deleteFriendsPost(SqlSession sqlSession, Follow fo) {
		return sqlSession.delete("memberMapper.deleteFriendsPost", fo);
	}
	public Member findaPassword(SqlSession sqlSession,Member m) {
		return sqlSession.selectOne("memberMapper.findaPassword", m );
	}
	
	public  ArrayList<Member> selectFriend(SqlSession sqlSession,int userNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectFriend", userNo);
	}
}


