package com.kh.mybatis.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.mybatis.member.model.service.MemberServiceImpl;
import com.kh.mybatis.member.model.vo.ProfileImg;

/**
 * Servlet implementation class ProfileImgselectController
 */
@WebServlet("/selectImg.me")
public class ProfileImgselectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileImgselectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse res) throws ServletException, IOException {
		ProfileImg pImg = new MemberServiceImpl().selectProfileImg(Integer.parseInt(request.getParameter("userNo")));
	
		if(pImg == null) {
			res.setContentType("text/html; charset=UTF-8");
	        new Gson().toJson("NNN", res.getWriter());
		}else {
			String str = pImg.getProfileUrl()+pImg.getChangeName();
			res.setContentType("text/html; charset=UTF-8");
			res.getWriter().print(str);
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
