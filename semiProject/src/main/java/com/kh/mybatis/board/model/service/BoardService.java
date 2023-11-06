package com.kh.mybatis.board.model.service;

public interface BoardService {
	
	ArrayList<Board> selectList(PageInfo pi);
	ArrayList<Board> searchList(String keyword);
	ArrayList<Board> chooseList(String keyword);
	int insert(Board b);
	int delete(Board b);
	int update(Board b);
	Board detailBoard(int boardNo);
	Board myBoardList(int userNo);
	
}
