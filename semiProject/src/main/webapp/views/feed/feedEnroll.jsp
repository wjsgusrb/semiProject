<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        background: white;
        height: 100%;
        width: 80%;
        margin: auto;
        margin-top: 50px;
    }
    .insert-feed{
        width: 100%;
        text-align: center;
    }
    .comment{
        border: 1px solid black;
        border-radius: 20%;
        align : center;
        max-width: 850px;
        height: 500px;
        margin-left: 5%;
        background-color: white;
    }
    .thumbnail{
        border: 1px solid black;
        border-radius: 5%;
        width: 150px;
        height: 150px;
        font-size: 12px;
    }
    .Lower-bar{
        margin-top: 210px;
        margin-left: 43%;
    }
    .userProfile{
        margin-left: 20%;
    }

    .user-info{
        display: flex;
        justify-content: center;
        width: 100%;
    }
    .user-info2{
        display: flex;
        justify-content: left;
        width: 500px;
        margin-bottom: 5px;
    }
   .textareadiv{
    display: flex;
    justify-content: center;
    align-items: center;
   }

   .pic-insert-div{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 30px;
   }
   
   .pic-insert{
    width: 500px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    }
    li {
        margin: 0 0 0 0;
        padding: 0 0 0 0;
        border : 0;
        float: left;
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
       <div class="insert-feed">
            <br>
            <h3 align="center" style="color: #0d6efd;">운동피드등록</h3>
            <br>

            <div class="user-info">
                <div class = "user-info2">
                    <div style="margin-right: 10px;"><i  class="fa-regular fa-user fs-1"></i></div>
                    <div>user01</div>
                </div>
            </div>
            <div class = "textareadiv">
                <textarea name="" id="" cols="55" rows="15" style="width: 500px; height: 150px;" placeholder="게시글을 입력하세요"></textarea>
            </div>

            <br>

            <div class = "pic-insert-div">
                <div class="pic-insert">
                    <div class="thumbnail">picture insert</div>
                    <div class="thumbnail">picture insert</div>
                    <div class="thumbnail">picture insert</div>
                </div>
            </div>

            <a href="boardListView.jsp" class="btn btn-primary">등록</a>
            <a type="reset" class="btn btn-danger">취소</a>
        </div>
    </div>
    
    
    <script>
    	$(function(plus){
    		
    	})
    </script>
</body>
</html>