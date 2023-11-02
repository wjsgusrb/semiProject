<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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


</style>




</head>
<body>
    <!-- 상단바 include 해야함-->
    <%@ include file="../common/menubar.jsp" %>

    
        
        <h5>자유게시판 - 운동정보</h5>
        <h2>벌크업 질문 있어요</h2>

        <div style="display: flex;">
            <img width="40px" height="40px" src="/ex/resources/board_upfile/user.png" alt="작성자 프로필 사진" />

            <div style="flex:1;">김개똥</div>
            <div style="flex:1;">조회수</div>
            <div style="flex:1;">23/10/31 22:06</div>
            <div style="flex:1;">댓글 2</div>
    
            
        </div>
        
        <div>시험테스트입니다.시험테스트입니다.시험테스트입니다.시험테스트입니다.</div>
  
    


</body>
</html>