<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

                    <script
                        type="text/javascript"
                        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5df6089610150bf39081f4bdb1c7356a&libraries=services"></script>
                    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                    <script src="https://kit.fontawesome.com/5b03f739e9.js" crossorigin="anonymous"></script>
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
                        <div class="var-top">
                            <div class="mainTitle">health community</div>
                            <div class="aaaaa" style="display: flex;">
                                <div><i class="fa-solid fa-house fa-l" style="opacity: 0.7; "></i></div>
                                <div style="margin-left: 30px; margin-right: 30px;">마이페이지</div>
                                <div><i class="fa-solid fa-magnifying-glass fa-l "style="opacity: 0.7;"></i></div>
                            </div>
                        </div>
                        <div class="top-var" style=" border-radius: 15px 15px 15px 15px; ">
                            <ul
                                class="nav nav-pills nav-fill "
                                style="background-color: white; color: white;  border-radius: 20px 20px 20px 20px; height: auto;">
                                <li class="nav-item" style="height:auto">
                                    <a class="nav-link" aria-current="page" href="#">운동통계표</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link " href="#">자유게시판</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">오운완</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link " aria-disabled="true">근육지도</a>
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
                                        const noticeNo = this.childNodes[1];
                                        noticeNo
                                            .classList
                                            .add("active");
                                    }
                                }
                            </script>
                        </div>

                    </body>
                </html>