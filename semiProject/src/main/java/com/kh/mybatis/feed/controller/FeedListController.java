package com.kh.mybatis.feed.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.board.model.service.BoardServiceImpl;
import com.kh.mybatis.common.model.vo.PageInfo;
import com.kh.mybatis.common.template.Pagenation;
import com.kh.mybatis.feed.model.service.FeedServiceImpl;
import com.kh.mybatis.feed.model.vo.Feed;

/**
 * Servlet implementation class FeedListController
 */
@WebServlet("/list.fe")
public class FeedListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//-------------------페이징 처리----------------------------
		int listCount = new FeedServiceImpl().selectListCount(); //현재 총 게시글 수
		int currentPage = Integer.parseInt(request.getParameter("cpage")); //현재 페이지(즉, 사용자가 요청한 페이지)
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Feed> list = new FeedServiceImpl().selectList(pi);
		
		for(Feed a : list) {
			System.out.println(a.getFeedNo());
		}
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		
		
		request.getRequestDispatcher("/views/feed/workoutCompleted.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
