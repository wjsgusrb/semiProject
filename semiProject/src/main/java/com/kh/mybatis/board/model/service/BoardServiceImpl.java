package com.kh.mybatis.board.model.service;


import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.board.model.dao.BoardDao;
import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.BoardComment;
import com.kh.mybatis.board.model.vo.BoardImg;
import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.common.template.Template;

public class BoardServiceImpl implements BoardService{

	private BoardDao bDao = new BoardDao();
	
	@Override
	public int selectListCount() {
		
		SqlSession sqlSession = Template.getSqlSession();
		int listCount = bDao.selectListCount(sqlSession);
		
		sqlSession.close();
		return listCount;
	}

	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Board> list = bDao.selectList(sqlSession, pi);
		
		sqlSession.close();
		return list;
		
	}

	@Override
	public int increaseCount(int boardNo) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = bDao.increaseCount(sqlSession, boardNo);
		
		if(result > 0) {
			sqlSession.commit();
		} 
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Board selectBoard(int boardNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Board b = bDao.selectBoard(sqlSession, boardNo);
		
		sqlSession.close();
		return b;
	}



	@Override
	public int selectSearchCount(HashMap<String, String> map) {
		
		SqlSession sqlSession = Template.getSqlSession();
		int searchCount = bDao.selectSearchCount(sqlSession,map );
		
		sqlSession.close();
		return searchCount;
		
	}

	@Override
	public ArrayList<Board> selectSearchList(HashMap<String, String> map, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		 ArrayList<Board> list  = bDao.selectSearchList(sqlSession, map , pi);
		
		 sqlSession.close();
		 return list;
	}
	
	@Override
	public BoardImg selectBoardImg(int boardNo) {
		SqlSession sqlSession = Template.getSqlSession();
		BoardImg bImg = bDao.selectBoardImg(sqlSession, boardNo);
		
		System.out.println(bImg);
		
		sqlSession.close();
		return bImg;
	}
	
	@Override
	public int updateBoard(Board b, BoardImg bImg) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result1 = bDao.updateBoard(sqlSession, b);
		int result2 = 1;
		
		if(bImg != null) {
			if(bImg.getBoardNo() != 0) {
				result2 = bDao.updateBoardImg(sqlSession, bImg);
			}else {
				result2 = bDao.insertBoardImg(sqlSession, bImg); 
			}
		}
		if(result1 > 0 && result2 > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result1 * result2;
	}
	
	@Override
	public int deleteBoard(int boardNo) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = bDao.deleteBoard(sqlSession, boardNo);
		if(result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result;
	}

	@Override
	public int insertBoard(Board b, BoardImg bImg) {
		SqlSession sqlSession = Template.getSqlSession();
		int result1 = bDao.insertBoard(sqlSession, b);
		int result2 = 1;
		if(bImg != null) {
			result2 = bDao.insertBoardImg(sqlSession, bImg);
		}
		if(result1 > 0 && result2 > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return (result1 * result2);
	}

	@Override
	public ArrayList<Board> selecttopFiveList() {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Board> list =  bDao.selecttopFiveList(sqlSession);
		sqlSession.close();
		return list;
	}
	
	@Override
	public ArrayList<BoardComment> selectCommentList(int boardNo) {
		
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<BoardComment> list = bDao.selectCommentList(sqlSession, boardNo);
		
		sqlSession.close();
		return list;
		
	}
	

	@Override
	public int insertComment(BoardComment c) {
		
		SqlSession sqlSession = Template.getSqlSession();
		int result = bDao.insertComment(sqlSession, c);
		if(result>0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result;
	}
	
	
	
}
