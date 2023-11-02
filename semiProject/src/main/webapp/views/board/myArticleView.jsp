<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .outer{
        color: black;
        width: 75%;
        height: 800px;
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
    .slect-view{
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
    #search-btn{
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
     <!-- 상단바 include 해야함-->
     <%@ include file="../common/menubar.jsp" %>

     <div class="outer">
        
        <h3 style="color: #0d62fd; text-align: center; padding-bottom: 40px; font-weight: 900; opacity: 0.7;">나의게시판</h3>

        <form action="">
            <div style="text-align: left;">
                <select name="" id="">
                    <option value="">전체기간</option>
                    <option value="">최근 1주</option>
                    <option value="">최근 1달</option>
                </select>
                <select name="" id="">
                    <option value="">운동정보</option>
                    <option value="">운동피드백</option>
                    <option value="">식단정보</option>
                </select>
                <select name="" id="">
                    <option value="">제목 + 내용</option>
                    <option value="">글제목</option>
                    <option value="">작성자</option>
                </select>
                <button type="submit" id="select-btn" class="btn btn-light">조회</button>
            </div>
            <div class="slect-view">
                <select name="" id="">
                    <option value="">최신순</option>
                    <option value="">조회순</option>
                </select>
            </div>   
        </form>
        

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
                <tr>
                     <!-- onclick되면 게시물 상세보기 페이지로 이동-->
                    <td>210</td>
                    <td>운동정보</td>
                    <td>시험작성하였습니다.</td>
                    <td>김개똥</td>
                    <td>50</td>
                    <td>2023/10/24</td>
                </tr>
                <tr>
                     <!-- onclick되면 게시물 상세보기 페이지로 이동-->
                    <td>199</td>
                    <td>식단정보</td>
                    <td>시험작성하였습니다.</td>
                    <td>김개똥</td>
                    <td>30</td>
                    <td>2023/01/11</td>
                </tr>
                <tr>
                     <!-- onclick되면 게시물 상세보기 페이지로 이동-->
                    <td>182</td>
                    <td>운동피드백</td>
                    <td>시험작성하였습니다.</td>
                    <td>김개똥</td>
                    <td>22</td>
                    <td>2022/12/15</td>
                </tr>
                <tr>
                    <!-- onclick되면 게시물 상세보기 페이지로 이동-->
                   <td>170</td>
                   <td>식단정보</td>
                   <td>시험작성하였습니다.</td>
                   <td>김개똥</td>
                   <td>50</td>
                   <td>2022/09/14</td>
               </tr>
            </tbody>
        </table>

        <br>

        <div class="search">
            <input type="text" placeholder="검색어 입력">
            <a href=""><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"></a>
        </div>

        <div class="bottom-btn">
            <a href="../board/boardEnrollForm.jsp" class="btn btn-primary">게시글 등록</a>
            <a href="../board/boardListView.jsp" class="btn btn-primary">전체 게시글 보기</a>
        </div>

        <br><br>

        <div class="paging-area" align="center">
	        
	        	<button class="btn btn-light" onclick="location.href=''">&lt;</button>
	            <button class="btn btn-light" onclick="location.href=''">1</button>
                <button class="btn btn-light" onclick="location.href=''">2</button>
                <button class="btn btn-light" onclick="location.href=''">3</button>
                <button class="btn btn-light" onclick="location.href=''">4</button>
                <button class="btn btn-light" onclick="location.href=''">5</button>
            	<button class="btn btn-light" onclick="location.href=''">&gt;</button>
        </div>
    </div>
</body>
</html>