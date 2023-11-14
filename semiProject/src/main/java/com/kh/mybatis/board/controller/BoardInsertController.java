package com.kh.mybatis.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.mybatis.board.model.service.BoardServiceImpl;
import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.BoardImg;
import com.kh.mybatis.common.template.MyFileRenamePolicy;
import com.kh.mybatis.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class BoardInsertController
 */
@WebServlet("/insert.bo")
public class BoardInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024 * 1024 * 10;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/board_upfile/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			String category = multiRequest.getParameter("category");
			String boardTitle = multiRequest.getParameter("title");
			String boardContent = multiRequest.getParameter("content");
			Member loginUser = (Member)session.getAttribute("loginUser");
			String userNo = String.valueOf(loginUser.getUserNo());
			
			Board b = new Board();
			b.setCategory(category);
			b.setBoardTitle(boardTitle);
			b.setBoardContent(boardContent);
			b.setUserNo(userNo);
			BoardImg bImg = null;
			
			if(multiRequest.getOriginalFileName("upfile") != null) {
				bImg = new BoardImg();
				bImg.setOriginName(multiRequest.getOriginalFileName("upfile"));
				bImg.setChangeName(multiRequest.getFilesystemName("upfile"));
				bImg.setBoardImg("resources/board_upfile/");
			}
			int result = new BoardServiceImpl().insertBoard(b, bImg);
			if(result > 0) { 
				request.getSession().setAttribute("alertMsg", "성공적으로 게시글을 작성했습니다.");
				response.sendRedirect("/ex/list.bo?cpage=1");
			}else {
				if(bImg != null) { // 실패시 업로드 사진 삭제
					new File(savePath + bImg.getChangeName()).delete();
				}
				request.setAttribute("errorMsg", "게시글 작성에 실패하였습니다.");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
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
