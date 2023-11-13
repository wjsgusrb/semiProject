package com.kh.mybatis.feed.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.mybatis.feed.model.service.FeedServiceImpl;
import com.kh.mybatis.feed.model.vo.FeedLike;

/**
 * Servlet implementation class countLikeController
 */
@WebServlet("/countLike")
public class countLikeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public countLikeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		FeedLike like = new FeedLike();
		like.setUserNo(Integer.parseInt(req.getParameter("userNo")));
		like.setFeedNo(Integer.parseInt(req.getParameter("feedNo")));

		int result = new FeedServiceImpl().countLike(like);
		System.out.println(result);
		
		res.setContentType("text/html; charset=UTF-8");
		new Gson().toJson(result,res.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
