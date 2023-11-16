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
        height: 90%;
        width: 60%;
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
            <h3 align="center" style="color: #0d6efd; font-style: italic;">workout completed</h3>
            <br>

                <form action="${pageContext.request.contextPath}/insert.fe" id="enroll-form" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="userNo" value="${loginUser.userNo}">
                    
                    <div class = "textareadiv">
                        <textarea name="feedText" id="" cols="55" rows="15" style="width: 500px; height: 150px;" placeholder="게시글을 입력하세요"></textarea>
                    </div>

                    <br>

                    <div class = "pic-insert-div">
                        <div class="pic-insert">
                            <div class="thumbnail">picture insert
                                <img id="content-img1" width="140" height="125" onclick="chooseFile(1);">
                            </div>
                            <div class="thumbnail">picture insert
                                <img id="content-img2" width="140" height="125" onclick="chooseFile(2);">
                            </div>
                            <div class="thumbnail">picture insert
                                <img id="content-img3" width="140" height="125" onclick="chooseFile(3);">
                            </div>
                        </div>
                    </div>

                    <div style="display: none;">
                        <input type="file" name="file1" id="file1" onchange="loadImg(this,1)">
                        <input type="file" name="file2" id="file2" onchange="loadImg(this,2)">
                        <input type="file" name="file3" id="file3" onchange="loadImg(this,3)">
                    </div>

                    <h5 align="center" style="color: red; font-style: italic; margin-bottom: 10px;">*사진을 꼭 첨부해주세요</h5>

                    <div align="center">
                        <button type="submit" class="btn btn-primary">등록</button>
                        <button type="button" onclick="history.back()" class="btn btn-danger">취소</button>
                    </div>
                    
        
        
        
                <script>
                    function loadImg(inputFile, num){
                        console.log(inputFile)

                        if(inputFile.files.length == 1){ // 미리보기
                            //파일을 읽어들일 FileReader객체 생성
                            const reader = new FileReader();

                            //파일을 읽어들이는 메소드
                            //해당파일을 읽어들이는 순간 해당 파일만의 고유한 url부여
                            reader.readAsDataURL(inputFile.files[0]);

                            //파일 읽어들이기 완료했을 때 실행할 함수 정의
                            reader.onload = function(ev){
                                //ev.target.result => 읽어들인 파일의 고유한 url
                                switch(num){
                                    case 1: $("#content-img1").attr("src", ev.target.result);break;
                                    case 2: $("#content-img2").attr("src", ev.target.result);break;
                                    case 3: $("#content-img3").attr("src", ev.target.result);
                                }
                            }


                        } else { // 선택된 파일이 취소된 경우 => 미리보기 사라지게
                            switch(num){
                                    case 1: document.getElementById('content-img1').src = null; break;
                                    case 2: document.getElementById('content-img2').src = null; break;
                                    case 3: document.getElementById('content-img3').src = null;
                                }
                        }



                    }

                    function chooseFile(num){
                        $("#file" + num).click();
                    }

                </script>
            </form>
        </div>
    </div>
</body>
</html>