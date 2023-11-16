package com.kh.mybatis.feed.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.mybatis.common.template.MyFileRenamePolicy;
import com.kh.mybatis.feed.model.service.FeedServiceImpl;
import com.kh.mybatis.feed.model.vo.Feed;
import com.kh.mybatis.feed.model.vo.FeedImg;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class FeedInsertController
 */
@WebServlet("/insert.fe")
public class FeedInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10*1024*1024;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/feed-upfile/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Feed f = new Feed();
			ArrayList<FeedImg> list = new ArrayList<FeedImg>();
			f.setUserNo(multiRequest.getParameter("userNo"));
			f.setFeedText(multiRequest.getParameter("feedText"));
			System.out.println(f.getUserNo());
			int result = 0;
			
			for(int i = 1; i <= 3; i++) {
				String key = "file" + i;
				if(multiRequest.getOriginalFileName(key) != null) {
					
					FeedImg fe = new FeedImg();
					fe.setOriginName(multiRequest.getOriginalFileName(key));
					fe.setChangeName(multiRequest.getFilesystemName(key));
					fe.setFeedUrl("resources/feed-upfile/");
					list.add(fe);
				}
			}
			
			result = new FeedServiceImpl().insertFeed(f,list);
			
			if(result > 0) { 
				request.getSession().setAttribute("alertMsg", "피드 등록 완료!");
			} else { 
				request.setAttribute("alertMsg", "피드 작성 실패");
			}
			response.sendRedirect(request.getContextPath() + "/list.fe?userNo="+ f.getUserNo() + "&cpage=1");
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
