package com.kh.mybatis.member.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.mybatis.common.template.MyFileRenamePolicy;
import com.kh.mybatis.member.model.service.MemberServiceImpl;
import com.kh.mybatis.member.model.vo.Member;
import com.kh.mybatis.member.model.vo.ProfileImg;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ProfileImgUpdateController
 */
@WebServlet("/insertImg.me")
public class ProfileImgUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileImgUpdateController() {
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
			String savePath = request.getSession().getServletContext().getRealPath("/resources/profile_upfile/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			ProfileImg pImg = null;
			if(multiRequest.getOriginalFileName("upfile") != null) {
				
				pImg = new ProfileImg();
				pImg.setOriginName(multiRequest.getOriginalFileName("upfile"));
				pImg.setChangeName(multiRequest.getFilesystemName("upfile"));
				pImg.setProfileUrl("resources/profile_upfile/");
				System.out.println(multiRequest.getParameter("profileImgNo"));
				if(multiRequest.getParameter("profileImgNo") != null) {
					pImg.setProfileImgNo(Integer.parseInt(multiRequest.getParameter("profileImgNo")));
				}else {
					Member loginUser = (Member)session.getAttribute("loginUser");
					pImg.setUserNo(String.valueOf(loginUser.getUserNo()));
				}
			}
			
			int result = new MemberServiceImpl().insertProfileImg(pImg);
			if(result > 0) { 
				request.getSession().setAttribute("alertMsg", "성공적으로 프로필을 업로드하였습니다.");
				response.sendRedirect("/ex/myPage.me");
			}else {
				if(pImg != null) { // 실패시 업로드 사진 삭제
					new File(savePath + pImg.getChangeName()).delete();
				}
				request.setAttribute("errorMsg", "프로필을 업로드에 실패하였습니다.");
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
