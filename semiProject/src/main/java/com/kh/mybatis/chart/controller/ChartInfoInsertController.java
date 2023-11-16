package com.kh.mybatis.chart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.chart.model.service.ChartServiceImpl;
import com.kh.mybatis.chart.model.vo.Chart;

/**
 * Servlet implementation class ChartInfoInsertController
 */
@WebServlet("/chartInfo.ct")
public class ChartInfoInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChartInfoInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("----------------------");
		req.setCharacterEncoding("UTF-8");
		
		Chart ex = new Chart();
		ex.setExChartTarget(String.join(",",req.getParameterValues("exTarget"))); 
		ex.setExChartTime(Integer.parseInt(req.getParameter("exTime")));
		ex.setUserNo(Integer.parseInt(req.getParameter("userNo")));
		
	
		
			
		int result = new ChartServiceImpl().insertExInfo(ex);
		
		
	
		
		if(result>0) {
			res.sendRedirect("exChart.ch");
		}else{
			System.out.print("실패");
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
