package com.kh.mybatis.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.board.model.service.BoardServiceImpl;
import com.kh.mybatis.board.model.vo.BoardComment;
import com.kh.mybatis.member.model.vo.Member;

/**
 * Servlet implementation class AjaxCommentInsertController
 */
@WebServlet("/cinsert.bo")
public class AjaxCommentInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxCommentInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		
		BoardComment co = new BoardComment();
		co.setBoardCommentContent(req.getParameter("boardContent"));
		co.setBoardNo(Integer.parseInt(req.getParameter("boardNo")));
		co.setUserNo(Integer.parseInt(req.getParameter("userNo")));
		System.out.println(co);
		int result = new BoardServiceImpl().insertComment(co);
	
		System.out.println(result);
		
		res.getWriter().print(result);
		
		
		
		
//		 (req.getSession().getAttribute("loginUser"))
		
	
		
//		
////		BoardComment c = new BoardComment();
////		c.setBoardCommentContent(boardCommentContent);
////		c.setBoardNo(boardNo);
////		c.setUserNo(String.valueOf(userNo));
////		
////		
////		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
