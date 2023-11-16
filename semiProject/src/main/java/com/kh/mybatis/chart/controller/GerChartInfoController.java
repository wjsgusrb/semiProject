package com.kh.mybatis.chart.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.mybatis.chart.model.service.ChartServiceImpl;
import com.kh.mybatis.chart.model.vo.Chart;
import com.kh.mybatis.member.model.vo.Member;

/**
 * Servlet implementation class GerChartInfoController
 */
@WebServlet("/getChartInfo")
public class GerChartInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GerChartInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setCharacterEncoding("UTF-8");
		Member m = (Member)req.getSession().getAttribute("loginUser");
		
		if(m != null) {
			int userNo = m.getUserNo();
			ArrayList<Chart> exList = new ChartServiceImpl().selectTodayExList(userNo);
			res.setContentType("text/html; charset=UTF-8");
			new Gson().toJson(exList, res.getWriter());
		}else {
			System.out.println("로그인 유저 없음");
			res.setContentType("text/html; charset=UTF-8");
			new Gson().toJson("로그인 유저 없음", res.getWriter());
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
