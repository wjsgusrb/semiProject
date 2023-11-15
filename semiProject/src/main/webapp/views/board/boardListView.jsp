<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.mybatis.common.model.vo.PageInfo, java.util.ArrayList, com.kh.mybatis.board.model.vo.Board" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous">
<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"></script>

<script
       type="text/javascript"
       src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5df6089610150bf39081f4bdb1c7356a&libraries=services"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>  
    .outer{
        color: black;
        width: 75%;
        height: 2000px;
        margin: auto;
    }
    .list-area{
        width: 100%;
        border-collapse: collapse;
        text-align: center;
        background: white;
        opacity: 0.7;
        font-weight: bold;
    }
    th, td {
        padding: 10px;
        border-bottom: 1px solid rgb(216, 216, 216);
    }
    .list-area>tbody>tr:hover{
        background: rgba(128, 128, 128, 0.743);
        cursor:pointer;
    }
    #table-head{
        background-color: #0d6efd;
        color: white;
        font-size: 16px;
    }
    .bottom-btn{
        margin: 0 auto;
        text-align: right;
        padding-top: 20px;
    }
    #paging-area{
       text-align: center;
       
    }
    .select-view{
        padding-bottom: 3px;
        margin: 0 auto;
        text-align: right;
    }
    #select-btn{
        color: #0d6efd;
        padding: 4px 3px;
        border-radius: 10px;
    }
    .search{
        position: relative;
        width: 300px;
        display: flex;
        align-items: center;
    }

    .search input{
        width: 100%;
        border: 1px solid #bbb;
        border-radius: 3px;
        padding: 10px 12px;
        font-size: 14px;
    }
    .search img{
        position : absolute;
        width: 17px;
        top: 10px;
        right: 12px;
        margin: 0;
    }

    #serch-btn{
        width: 40px;
        height: 40px;
        border: none;
        cursor: pointer;
        
    }
    select {
        width: 150px;
        height: 35px;
        background: url('https://freepikpsd.com/media/2019/10/down-arrow-icon-png-7-Transparent-Images.png') calc(100% - 5px) center no-repeat;
        background-size: 20px;
        padding: 5px 30px 5px 10px;
        border-radius: 20px;
        outline: 0 none;
    }
    select option {
        background: black;
        color: #fff;
        padding: 3px 0;
    }
</style>
</head>
<body>
    <div class="outer">
    <br>
    
        <jsp:include page="/views/common/menubar.jsp" />
        <!-- 자유게시판으로 들어가면 메뉴바 자유게시판 버튼 계속 눌리게 유지해야함-->
       
       <div class="select-view" style= "float: right;">
                <select name=" " id="">
                    <option value="">최신순</option>
                    <option value="">조회순</option>
                </select>
            </div>         
    
            <table align="center" class="list-area">
                
                
                <thead>
                    <tr id="table-head">
                        <th width="70">글번호</th>
                        <th width="100">카테고리</th>
                        <th width="300">제목</th>
                        <th width="100">작성자</th>
                        <th width="50">조회수</th>
                        <th width="100">작성일</th>
                    </tr>
                </thead>
                
                <tbody>
                
                <c:forEach var="b" items="${list}">

                	<tr onclick="location.href='detail.bo?bno=${b.boardNo}'">
                		<td>${b.boardNo}</td>
                		<td>${b.category}</td>
                		<td>${b.boardTitle}</a></td>
                		<td>${b.userNo}</td>
                		<td>${b.boardCount}</td>
                		<td>${b.updateDate}</td>
                	</tr>
                </c:forEach>
                </tbody>
            </table>

  
            	<!-- 로그인한 회원 보이게 만들어야 함-->
            	<c:if test="${ not empty loginUser }">
		            <div class="bottom-btn">
		                <a href="/ex/enrollForm.bo" class="btn btn-primary">게시글 등록</a>
		                <a href="../board/myArticleView.jsp" class="btn btn-primary">나의게시판</a>
		            </div>
		        </c:if>
	        
	        <div class="paging-area" align="center">
                <c:if test="${ pi.currentPage ne 1 }">
                    <button class="btn btn-light" onclick="location.href='list.bo?cpage=${ pi.currentPage - 1 }'">&lt;</button>
                </c:if>

                <c:forEach var="p" begin="${pi.startPage}" end="${ pi.endPage }" >
                    <button class="btn btn-light" onclick="location.href='list.bo?cpage=${p}'">${p}</button>
                </c:forEach>
                <c:if test="${ pi.currentPage ne pi.maxPage }">
                    <button class="btn btn-light" onclick="location.href='list.bo?cpage=${ pi.currentPage + 1 }'">&gt;</button>
                </c:if>
            </div>
            <div id="search-area" style="text-align: left;">
          <form action="search.bo" method="post">
           
            <br>    
               
               <select name="period" >
                    <option value="wholePeriod">전체기간</option>
                    <option value="oneWeek">최근 1주</option>
                    <option value="oneMonth">최근 1달</option>
                </select>
                
                <select name="category">
                    <option value="information">운동정보</option>
                    <option value="feedback">운동피드백</option>
                    <option value="menu">식단정보</option>
                </select>
                
                <input type="hidden" name="cpage" value="1">
                <select name="condition" >
                    <option value="writer">작성자</option>
                    <option value="title">글제목</option>
                    <option value="content">내용</option>
                </select>
                </input type="text" name="keyword" value="${keyword}">
                
                <button type="submit" id="select-btn" class="btn btn-light">조회</button>
                
                
                <div class="search">
                   <input type="text" placeholder="검색어 입력">
                   <a href=""><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"></a>
               </div>
               
                <c:if test="${not empty condition }">
               <script>
                  window.onload = function(){
                      const opt = document.querySelector("#search-area option[value=${condition}]");
                      opt.setAttribute("selected", true);
                  }
               </script>
            </c:if>
               
            </div>
              
        </form>
    
            <br>
            
        </div>
    </div>
</body>
</html>