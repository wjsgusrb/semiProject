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
    .skip-btn{
        background: none;
        border: none;
        
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
        <div class="myFeed">
            <div class="user-info" >
                <div class = "user-info2">
                    <i style="float: left; margin-top: 5px;" class="fa-regular fa-user fs-1"></i>
                    <p style="float: left; margin-left: 20px; margin-top: 15px;" >user01</p>
                </div>
            </div>
            <div>
                <button class="skip-btn">
                    <svc xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                    </svc>
                </button>
                
                <img src="../../resources/board_upfile/스크린샷 2023-11-09 204548.png" width="420" height="525" />
                <button class="skip-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
                    </svg>
                </button>
            </div>

            <button style="background: none; color: #0d62fd;" class="btn btn-light" onclick="location.href=''">￮</button>
            <button style="background: none; color: #0d62fd;" class="btn btn-light" onclick="location.href=''">￮</button>
            <button style="background: none; color: #0d62fd;" class="btn btn-light" onclick="location.href=''">￮</button>

            <div class="form-floating">
                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px;"></textarea>
                <label for="floatingTextarea2">Comments</label>
            </div>
        </div>
    </div>
    
</body>
</html>