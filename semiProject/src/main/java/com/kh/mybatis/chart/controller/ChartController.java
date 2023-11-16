package com.kh.mybatis.chart.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.chart.model.service.ChartServiceImpl;
import com.kh.mybatis.chart.model.vo.Chart;
import com.kh.mybatis.member.model.vo.Member;

/**
 * Servlet implementation class ChartController
 */
@WebServlet("/exChart.ch")
public class ChartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		//ArrayList<Chart> exList = new ChartServiceImpl().selectTodayExList(((Member) req.getSession().getAttribute("loginUser")).getUserNo());
//		
		req.getRequestDispatcher("views/countChart/exChart.jsp").forward(req, res);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
