<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        color: black;
        background-color: white;
        width: 75%;
        height: auto;
        margin: auto;
        opacity: 0.7;
    }
    .myFeed{
        width: 100%;
        text-align: center;
    }
    .user-info{
        display: flex;
        justify-content: center;
        width: 100%;
    }
    .user-info2{
        display: flex;
        width: 420px;
    }
    .user-info3{
        display: flex;
        width: 420px;
        justify-content: left;
        margin-top: 7px;
    }
    .user-info4{
        display: flex;
        width: 420px;
        justify-content: left;
        margin-top: 12px;
    }
    .skip-btn{
        background: none;
        border: none;
    }
    .outer table{
        border: 1px solid white;
        border-collapse: collapse;
    }
    .outer > table tr, .outer > table td{
        border: 1px solid white;
    }
    .form-control{
        display: flex;
        justify-content: center;
        resize:none;
        width:50%;
    }
    #heart-btn{
        width: 30px;
        height: 30px;
        justify-items: left;
        margin-right: 10px;
    }
    .reply-outer{
        margin-left: 20%;
        margin-right: 20%;
        font-size: 15px;
    }
    .form-control{
        width: 50%;
    }
   
</style>
<!-- bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- jquery 3.7.1 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/fd91061247.js" crossorigin="anonymous"></script>
</head>

<body>
    <jsp:include page="/views/common/menubar.jsp" />

    <div class="outer">

        <div align="right"><a href="${pageContext.request.contextPath}/views/feed/feedEnroll.jsp" class="btn btn-primary">피드등록</a></div>
        
        
        <div class="myFeed">
            <c:forEach var="f" items="${list}">
                <div class="user-info" >
                    <div class = "user-info2">
                        <i style="float: left; margin-top: 5px;" class="fa-regular fa-user fs-1"></i>
                        <p style="float: left; margin-left: 20px; margin-top: 15px;" >${f.userNo}</p>
                    </div>
                </div>
                <div>
                    <button class="skip-btn">
                        <svc xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                        </svc>
                    </button>
                           <input type="hidden" value="" name="cpage">
                           <img src="./${f.feedUrl}${f.originName }"  width="420" height="525" />
                    <button class="skip-btn">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
                        </svg>
                    </button>
                </div>
            
            <!--
            <button style="background: none; color: #0d62fd;" class="btn btn-light" onclick="location.href=''">￮</button>
            <button style="background: none; color: #0d62fd;" class="btn btn-light" onclick="location.href=''">￮</button>
            <button style="background: none; color: #0d62fd;" class="btn btn-light" onclick="location.href=''">￮</button>
            -->

            <div class="user-info">
                <div class="user-info3">
                    <img src="../../resources/board_upfile/KakaoTalk_20231110_162616520_02.png" id="heart-btn">
                    좋아요 37개
                </div>
            </div>
            <div class="user-info">
                <div class="user-info4">
                    <p style="margin-right: 5px;">user01 <br></p>
                    <p>${f.feedText}</p>
                </div>
            </div>

            <div id="reply-area" class="reply-outer">
                <table id="replyArea" class="table" align="center">
                    <thead>
                        <tr> 
                            <th colspan="2">
                                <textarea class="form-control" id="content" cols="50" rows="2" placeholder="댓글을 입력하세요"></textarea>
                            </th>
                            <th style="vertical-align:middle"><button class="btn btn-primary" onclick="addReply();">댓글등록</button></th>
                        </tr>
                        <tr>
                            <td>댓글(<span id="rcount">2</span>)</td>
                        </tr>
                        <tr>
                            <th>user07</th>
                            <td>역시 토트넘 레전드</td>
                            <td>2023-11-10</td>
                        </tr>
                        <tr>
                            <th>user08</th>
                            <td>닭집 out</td>
                            <td>2023-11-09</td>
                        </tr>
                    </thead>
                    <tbody>
                      
                    </tbody>
                </table>
                
            </div>
            </c:forEach>
        </div>
    </div>
    
</body>
</html>