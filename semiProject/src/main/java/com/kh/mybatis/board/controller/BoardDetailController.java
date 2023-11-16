package com.kh.mybatis.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.board.model.service.BoardService;
import com.kh.mybatis.board.model.service.BoardServiceImpl;
import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.BoardComment;
import com.kh.mybatis.board.model.vo.BoardImg;

/**
 * Servlet implementation class boardDetailController
 */
@WebServlet("/detail.bo")
public class BoardDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("bno"));
		
		BoardService bService = new BoardServiceImpl(); 
		
		int result = bService.increaseCount(boardNo);
		
		if(result > 0){
			Board b = bService.selectBoard(boardNo);
			
			ArrayList<BoardComment> list =  bService.selectCommentList(boardNo);
			BoardImg bimg = bService.selectBoardImg(boardNo);
			
			request.setAttribute("b", b);
			request.setAttribute("bImg", bimg);
			request.setAttribute("list", list);
			
			
			
			request.getRequestDispatcher("views/board/boardDetailView.jsp").forward(request, response);
			
		} else {
			request.setAttribute("errorMsg", "상세조회 실패");
			request.getRequestDispatcher("WEB-INF/view/common/errorPage.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
