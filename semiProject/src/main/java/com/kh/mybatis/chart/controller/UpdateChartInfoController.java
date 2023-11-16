package com.kh.mybatis.chart.controller;

import java.io.IOException;

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
 * Servlet implementation class UpdateChartInfoController
 */
@WebServlet("/updateChartInfo.bo")
public class UpdateChartInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateChartInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setCharacterEncoding("UTF-8");
		Chart ch = new Chart();
		ch.setExChartTime(Integer.parseInt(req.getParameter("exChartTime")));
		ch.setExChartTarget(req.getParameter("exChartTarget"));
		ch.setUserNo(((Member)req.getSession().getAttribute("loginUser")).getUserNo());
		

		int result =  new ChartServiceImpl().UpdateChartInfo(ch);
		
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
