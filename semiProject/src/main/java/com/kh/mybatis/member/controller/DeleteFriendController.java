package com.kh.mybatis.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.mybatis.member.model.service.MemberServiceImpl;
import com.kh.mybatis.member.model.vo.Follow;
import com.kh.mybatis.member.model.vo.Member;

/**
 * Servlet implementation class DeleteFriendController
 */
@WebServlet("/deleteFriendsPost.bo")
public class DeleteFriendController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFriendController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Follow fo = new Follow();
		fo.setFollowerUser(Integer.parseInt((req.getParameter("hiddleUserNo"))));
		fo.setFollowingUser(((Member)req.getSession().getAttribute("loginUser")).getUserNo());
	
		int result = new MemberServiceImpl().deleteFriendsPost(fo);
		
		res.setContentType("text/html; charset=UTF-8");
		new Gson().toJson(result, res.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
