package com.kh.mybatis.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.BoardComment;
import com.kh.mybatis.board.model.vo.BoardImg;
import com.kh.mybatis.common.model.vo.PageInfo;

public class BoardDao {

	public int selectListCount(SqlSession sqlSession) {

		return sqlSession.selectOne("boardMapper.selectListCount");
	}


	public ArrayList<Board> selectList(SqlSession sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		ArrayList<Board> list = (ArrayList)sqlSession.selectList("boardMapper.selectList", null , rowBounds);
		return list;
		
	}

	public int increaseCount(SqlSession sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseCount", boardNo);
	}

	public Board selectBoard(SqlSession sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", boardNo);
	}

	public ArrayList<BoardComment> selectCommentList(SqlSession sqlSession, int boardNo) {
		System.out.println(boardNo);
		return (ArrayList)sqlSession.selectList("boardMapper.selectCommentList", boardNo);
	}

	public int selectSearchCount(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("boardMapper.selectSearchCount", map);
	}

	public ArrayList<Board> selectSearchList(SqlSession sqlSession, HashMap<String, String> map, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectSearchList", map, rowBounds);
	}
	public int insertBoard(SqlSession sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}
	public int insertBoardImg(SqlSession sqlSession, BoardImg bImg) {
		return sqlSession.insert("boardMapper.insertBoardImg", bImg);
	}
	
	public int deleteBoard(SqlSession sqlSession, int boardNo) {
		return sqlSession.delete("boardMapper.deleteBoard", boardNo);
	}
	public int updateBoard(SqlSession sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateBoard", b);
	}
	public int updateBoardImg(SqlSession sqlSession, BoardImg bImg) {
		return sqlSession.update("boardMapper.updateBoardImg", bImg);
	}
}
