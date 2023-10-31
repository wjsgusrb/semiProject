<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        border: none;
        margin-bottom: 10px;
        background-color: #0d6efd;
        color:white;
        border-radius: 20px;
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
        <!-- 상단바 include 해야함-->
        <%@ include file="../common/menubar.jsp" %>
        <!-- 자유게시판으로 들어가면 메뉴바 자유게시판 버튼 계속 눌리게 유지해야함-->
        <form action="">
            <div style="text-align: left;">
                <select name="" id="">
                    <option value="">전체기간</option>
                    <option value="">최근 1주</option>
                    <option value="">최근 1달</option>
                </select>
                <select name="" id="">
                    <option value="">운동정보</option>
                    <option value="">운동 피드백</option>
                    <option value="">식단 정보</option>
                </select>
                <select name="" id="">
                    <option value="">제목 + 내용</option>
                    <option value="">글제목</option>
                    <option value="">작성자</option>
                </select>
                <button id="select-btn">조회</button>
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
                        <td>209</td>
                        <td>식단정보</td>
                        <td>시험작성하였습니다.</td>
                        <td>김개만</td>
                        <td>30</td>
                        <td>2023/09/11</td>
                    </tr>
                    <tr>
                         <!-- onclick되면 게시물 상세보기 페이지로 이동-->
                        <td>208</td>
                        <td>운동피드백</td>
                        <td>시험작성하였습니다.</td>
                        <td>장성구</td>
                        <td>22</td>
                        <td>2023/05/06</td>
                    </tr>
                    <tr>
                        <!-- onclick되면 게시물 상세보기 페이지로 이동-->
                       <td>207</td>
                       <td>식단정보</td>
                       <td>시험작성하였습니다.</td>
                       <td>한혜령</td>
                       <td>50</td>
                       <td>2023/05/03</td>
                   </tr>
                   <tr>
                        <!-- onclick되면 게시물 상세보기 페이지로 이동-->
                       <td>206</td>
                       <td>운동정보</td>
                       <td>시험작성하였습니다.</td>
                       <td>금남식</td>
                       <td>33</td>
                       <td>2023/03/06</td>
                  </tr>
                  <tr>
                        <!-- onclick되면 게시물 상세보기 페이지로 이동-->
                        <td>205</td>
                        <td>운동정보</td>
                        <td>시험작성하였습니다.</td>
                        <td>김개방</td>
                        <td>59</td>
                        <td>2023/03/01</td>
                 </tr>
                </tbody>
            </table>
    
            <div class="search">
                <input type="text" placeholder="검색어 입력">
                <a href=""><img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"></a>
            </div>
    
            <div class="bottom-btn">
                <a href="../board/boardEnrollForm.jsp" class="btn btn-primary">게시글 등록</a>
                <a href="../board/myArticleView.jsp" class="btn btn-primary">나의게시판</a>
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
    </div>
</body>
</html>