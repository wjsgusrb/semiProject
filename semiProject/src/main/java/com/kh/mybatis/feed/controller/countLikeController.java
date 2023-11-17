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
import com.kh.mybatis.member.model.vo.Member;

/**
 * Servlet implementation class countLikeController
 */
@WebServlet("/countLike.fe")
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
		
		like.setFeedNo(Integer.parseInt(req.getParameter("feedNo")));
		like.setUserNo(((Member)req.getSession().getAttribute("loginUser")).getUserNo());
		
		int insertLike = new FeedServiceImpl().insertLike(like);
		System.out.println(insertLike);
		if(insertLike> 0) {
			int result = new FeedServiceImpl().countLike(like);
			System.out.println(result);
			res.setContentType("text/html; charset=UTF-8");
			new Gson().toJson(result,res.getWriter());
		}else {
			res.setContentType("text/html; charset=UTF-8");
			new Gson().toJson("NNN",res.getWriter());
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
