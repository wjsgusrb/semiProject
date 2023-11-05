package com.kh.mybatis.board.model.service;

<<<<<<< HEAD
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.Comment;
import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.member.model.vo.Member;

public interface BoardService {
	
	//게시판 리스트 조회
	public int selectListCount();
	public ArrayList<Board> selectList(PageInfo pi);
	
	//게시글 상세조회
	int increaseCount(int boardNo);
	Board selectBoard(int boardNo);
	ArrayList<Comment> selectCommentList(int boardNo);
	
	//게시글 검색
	int selectSearchCount(HashMap<String, String> map);
	public ArrayList<Board> selectSearchList(HashMap<String, String> map, PageInfo pi);
	
	//게시글 작성
	int insertBoard(Board b);
	
	//게시글 수정
	int updateBoard(Board b);
	
	//게시글 삭제
	int deleteBoard(Board b);
=======
public interface BoardService {
	
	ArrayList<Board> selectList(PageInfo pi);
	ArrayList<Board> searchList(String keyword);
	ArrayList<Board> chooseList(String keyword);
	int insert(Board b);
	int delete(Board b);
	int update(Board b);
	Board detailBoard(int boardNo);
	Board myBoardList(int userNo);
>>>>>>> 5e0ba9e02b8320e007e855d7964c60537481bcd3
	
}
