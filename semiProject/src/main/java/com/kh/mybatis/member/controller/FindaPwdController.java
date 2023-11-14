package com.kh.mybatis.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.member.model.service.MemberServiceImpl;

/**
 * Servlet implementation class FindaPwdController
 */
@WebServlet("/findPwd.me")
public class FindaPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindaPwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String checkId = request.getParameter("checkId");
		String checkEmail = request.getParameter("checkEmail");
		
		int count = new MemberServiceImpl().findaPassword(checkId,checkEmail);
		
		if (count > 0) { //이미 사용자가 존재한다 => 사용할 수 없음
			response.getWriter().print("NNNNN");
		} else { // 아이디사용자가 없다 => 사용가능
			response.getWriter().print("NNNNY");
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
