<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.mybatis.member.model.vo.Member"%>
  
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
            <link
                href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
                rel="stylesheet"
                integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
                crossorigin="anonymous">
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
                    crossorigin="anonymous"></script>

                <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

                <script
                    type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5df6089610150bf39081f4bdb1c7356a&libraries=services"></script>
                <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                <script src="https://kit.fontawesome.com/5b03f739e9.js" crossorigin="anonymous"></script>
                <script src="resources/js/ajaxController.js?ver=1"></script>
                <script src="resources/js/index.js"></script>
                <script src="resources/js/chart.js"></script>
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,700&display=swap" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Gasoek+One&family=Roboto:ital,wght@1,700&display=swap" rel="stylesheet">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Agbalumo&family=Bagel+Fat+One&family=Gasoek+One&family=Noto+Sans+KR:wght@600&family=Roboto:ital,wght@1,700&display=swap" rel="stylesheet">
                                            
                <title>Insert title here</title>
                <style>
                    body {
                        height: 100vh;
                        background-color: rgb(232, 247, 254);
                        font-family: 'Roboto', sans-serif;
                    
                        font-size: 18px;
                    }
                    .top-var {
                        width: auto;
                        height: auto;
                        margin-top: 30px;
                        padding: 50px;
                        border-radius : 1px solid black;
                        opacity : 0.7;
                    }
                    a {
                        text-decoration: none;
                        color: white;
                    }
                    .nav-link:hover {
                        background-color: #0d62fd;
                        color: white;
                    }
                    .main-img{
                        width: 500px;
                        height: 50px;
                        background-color: white;
                    }
                    .var-top{
                        padding-top: 20px;
                        display: flex;
                        justify-content: center;
                        position: relative;
                        width: 100%;
                    }
                    .var-top > div:hover{
                        cursor: pointer;
                        
                    }
                    .aaaaa{
                        position: absolute;
                        right: 10%;
                    }
                    .mainTitle{
                        font-size: 35px;
                        opacity: 0.5;
                    }
                
                </style>
    </head>
    <body>
    <!--상단바를 보여주는 부분-->

    <!-- 마이페이지에 로그인한 유저만 들어갈 수 있음-->
    <c:if test="${!empty alertMsg}">
        <script>
            alert("${alertMsg}");
        </script>
        <c:remove var="alertMsg" scope="session" />
    </c:if>

    <div class="var-top">
        <div class="mainTitle"><a href="index.jsp" style="color: black;">health community</a></div>
        <div class="aaaaa" style="display: flex;">
            <div>
                <a href="${pageContext.request.contextPath}/index.jsp"><i class="fa-solid fa-house fa-l" style="opacity: 0.7; color: black; "></i></a>
            </div>
            <div >
                <a href="${pageContext.request.contextPath}/myPage.me" style="margin-left: 30px; margin-right: 30px; color: black;">마이페이지</a>
            </div>
            <div><i data-bs-toggle="modal" data-bs-target="#exampleModal1" class="fa-solid fa-magnifying-glass fa-l "style="opacity: 0.7;"></i></div>
        </div>
    </div>
    <div class="top-var" style=" border-radius: 15px 15px 15px 15px; ">
        <ul
            class="nav nav-pills nav-fill "
            style="background-color: white; color: white;  border-radius: 20px 20px 20px 20px; height: auto;">
            <li class="nav-item" style="height:auto">
                <a class="nav-link " aria-current="page"  href="exChart.ch">운동통계표</a>
            </li>   
            <li class="nav-item">
                <a class="nav-link " href="list.bo?cpage=1">자유게시판</a>
            </li>
            <li class="nav-item">
                <c:choose>
                    <c:when test="${! empty loginUser}">
                        <a class="nav-link " href="list.fe?userNo=${loginUser.userNo}&cpage=1">오운완</a>
                    </c:when>
                    <c:otherwise>
                        <a class="nav-link " onclick="alert('로그인 먼저 해주세요')">오운완</a>
                    </c:otherwise>
                </c:choose>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="muscleMap.mc">근육지도</a>
            </li>
        </ul>
    <script>  
            const currentPage = document.getElementsByClassName("nav-item");
            const currentPagea = document.querySelectorAll(".nav>.nav-item>a");
            for (const current of currentPage) { 
                current.onclick = function () {
                    for (const a of currentPagea) {
                        a
                        .classList
                            .remove("active");
                    }
                    noticeNo = this.childNodes[1];
                    noticeNo
                        .classList
                    .add("active");
                }
            }
    </script>                     
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">친구 검색</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="form-floating mb-3">
                <input type="email" class="form-control" id="floatingInput" placeholder="userid">
                <label for="floatingInput">친구아이디 검색</label>
                </div>
                <div id="sendFrieds">


                </div>
        </div>
        <script>
            let selectUserId
            let eventFlag;
            const selectId = document.getElementById("floatingInput")
            selectId.onkeyup =()=>{
                console.log("asdasd")
                clearTimeout(eventFlag);
                eventFlag = setTimeout(()=>{  
                    if(selectId.value.length >= 3){
                        ajaxController.getSelectUser({selectId: selectId.value}, (result)=>{
                            result === null ? [] : result;
                            selectUserId = result;
                            selectFriends(selectUserId)
                        })
                    }
                },300) 
            }
            
            const checkArea = document.querySelector("#sendFrieds");
            selectFriends = (selectUserId) =>{
                if(selectUserId.length === 0){
                    checkArea.innerHTML = "맞는 아이디가 존재하지 않습니다."
                }else{
                    checkArea.replaceChildren();
                    for(let fried of selectUserId){
                        let div = document.createElement("div");
                        let button = document.createElement('button');
                        button.classList.add("btn");
                        button.classList.add("btn-outline-primary");

                        button.innerHTML =  "아이디 : " + fried.userId +" "+ fried.userName + "님 "
                        button.onclick = () =>{
                            const data = {
                                sendUser : "${loginUser.userNo}",
                                getUser : fried.userNo
                            }
                            confirm(fried.userName + "님에게 친구요청을 보내시겠습니까?") === true ? ajaxController.sendFrieds(data, (result) =>{
                                result > 0 ? alert("친구요청성공") : alert("친구요청 실패")
                            }) : ""
                            
                            location.reload(true);
                            alert("친구요청성공") 
                            
                        }
                        checkArea.appendChild(div.appendChild(button))     
                    }
                }

            }
        </script>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">친구요청</button>
                </div>
            </div>
            </div>
        </div>
    </body>
</html>