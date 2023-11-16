package com.kh.mybatis.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.mybatis.member.model.service.MemberServiceImpl;
import com.kh.mybatis.member.model.vo.Member;

/**
 * Servlet implementation class SelectPostFriends
 */
@WebServlet("/checkSeedFrieds.me")
public class SelectPostFriends extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectPostFriends() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Member m = (Member)req.getSession().getAttribute("loginUser");
		
		
		if(m != null) {
			int userNo = m.getUserNo();
			System.out.println(userNo);
			ArrayList<Member> list = new MemberServiceImpl().checkSeedFrieds(userNo);
			res.setContentType("text/html; charset=UTF-8");
			new Gson().toJson(list, res.getWriter());
		}else {
			System.out.println("로그인 유저없음");
			res.setContentType("text/html; charset=UTF-8");
			new Gson().toJson("로그인 유저없음", res.getWriter());
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
