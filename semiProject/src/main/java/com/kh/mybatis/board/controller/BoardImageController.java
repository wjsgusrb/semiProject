package com.kh.mybatis.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.mybatis.board.model.service.BoardServiceImpl;
import com.kh.mybatis.board.model.vo.BoardImg;

/**
 * Servlet implementation class BoardImageController
 */
@WebServlet("/selectImg.bo")
public class BoardImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardImageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse res2) throws ServletException, IOException {
		BoardImg boImg = new BoardServiceImpl().selectBoardImg(Integer.parseInt(request.getParameter("boardNo")));
		System.out.println(boImg);
		
		if(boImg == null) {
			res2.setContentType("text/html; charset=UTF-8");
	        new Gson().toJson("NNN", res2.getWriter());
	        System.out.println(boImg+"11");
	        
		}else {
			String str = boImg.getBoardImg()+boImg.getChangeName();
			res2.setContentType("text/html; charset=UTF-8");
			res2.getWriter().print(str);
			System.out.println(boImg);
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
