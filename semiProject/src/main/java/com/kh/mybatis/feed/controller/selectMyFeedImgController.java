package com.kh.mybatis.feed.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.mybatis.feed.model.service.FeedServiceImpl;
import com.kh.mybatis.feed.model.vo.Feed;

/**
 * Servlet implementation class selectMyFeedImgController
 */
@WebServlet("/selectFeedImg.fe")
public class selectMyFeedImgController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectMyFeedImgController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Feed> fList = new FeedServiceImpl().selectMyFeed(Integer.parseInt(request.getParameter("userNo")));
		
		response.setContentType("text/html; charset=UTF-8");
        new Gson().toJson(fList, response.getWriter());
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
