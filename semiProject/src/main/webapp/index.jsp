<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
                <title>Insert title here</title>
                <link rel="stylesheet" href="resources/css/mainpage.css"></head>
                <body>
                    <%@ include file="views/common/menubar.jsp" %>
                        <style>
                            .middle-area > div > div {
                               
                                border-radius: 15px 15px 15px 15px;

                            }
                            .middle-area-top {
                                display: flex;
                                width: 100%;
                                height: 100%;
                                margin-bottom: 50px;
                                justify-content: space-around;

                            }
                            .middle-area-bottom {
                                display: flex;
                                justify-content: space-around;
                            }
                            .ex-chart {
                                display: flex;
                                opacity: 0.9;
                                width: 1000px;
                                height: 400px;
                                opacity: 0.6;
                                border: none;
                            }
                            .ex-login {
                                width: 550px;
                                height: 400px;
                                opacity: 0.7;
                                border: none;
                            }
                            .ex-checkFrendsEx {
                                width: 550px;
                                height: 400px;
                                opacity: 0.7;
                                border: none;
                            }
                            .ex-board {
                                width: 550px;
                                height: 400px;
                                opacity: 0.7;
                                border: none;
                            }
                            .gym-map {
                                width: 550px;
                                height: 400px;
                                opacity: 0.7;
                                border: none;
                            }
                        </style>

                        <div class="middle-area">
                            <div class="middle-area-top">
                                <!--차트 정보를 보여주는 부분-->
                                <div class="ex-chart" align="letf">
                                    <div style="width: 75%; height: 100%;">
                                        <canvas id="myChart"></canvas>
                                    </div>

                                    <div align="center" style="margin-top:50px ;" class="chartInfo">
                                        <h2>오늘의 운동</h2>
                                        <br>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="shoulder">
                                                    <label class="form-check-label" for="shoulder">
                                                        어께
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="chest">
                                                        <label class="form-check-label" for="chest">
                                                            가슴
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="" id="back">
                                                            <label class="form-check-label" for="back">
                                                                등
                                                            </label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" value="" id="arm">
                                                                <label class="form-check-label" for="arm">
                                                                    팔
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="leg">
                                                                    <label class="form-check-label" for="leg">
                                                                        다리
                                                                    </label>
                                                                </div>
                                                                <br>
                                                                    <h5>운동시간</h5>
                                                                    <input type="range" min="0" max="600" class="form-range" id="customRange1">
                                                                        <button
                                                                            type="button"
                                                                            id="ex-info"
                                                                            class="btn btn-outline-primary"
                                                                            onclick="changeInfo()">오운완 제출</button>

                                                                    </div>

                                                                    <script>
                                                                        const ctx = document.getElementById('myChart');
                                                                        // const labels = Utils.months({count: 7});
                                                                        const data = {
                                                                            labels: [
                                                                                "월",
                                                                                "월",
                                                                                "월",
                                                                                "월",
                                                                                "월",
                                                                                "월",
                                                                                "월"
                                                                            ],
                                                                            datasets: [
                                                                                {
                                                                                    label: 'My First Dataset',
                                                                                    data: [
                                                                                        65,
                                                                                        59,
                                                                                        80,
                                                                                        81,
                                                                                        56,
                                                                                        55,
                                                                                        40
                                                                                    ],
                                                                                    fill: false,
                                                                                    borderColor: 'rgb(75, 192, 192)',
                                                                                    tension: 0.1
                                                                                }
                                                                            ]
                                                                        };
                                                                        const config = {
                                                                            type: 'line',
                                                                            data: data
                                                                        };
                                                                        new Chart(ctx, config);
                                                                    </script>
                                                                </div>
                                                                <!--로그인을 화면을 보여주는 부분-->
                                                                <div class="ex-login">
                                                                    <form class="login">
                                                                        <div class="login__field">
                                                                            <i class="login__icon fas fa-user"></i>
                                                                            <input type="text" class="login__input" placeholder="User name / Email"></div>
                                                                            <div class="login__field">
                                                                                <i class="login__icon fas fa-lock"></i>
                                                                                <input type="password" class="login__input" placeholder="Password"></div>
                                                                                <button class="button login__submit">
                                                                                    <span class="button__text">Log In Now</span>
                                                                                </div>

                                                                            </div>
                                                                            <div class="middle-area-bottom">
                                                                                <div class="ex-checkFrendsEx"></div>
                                                                                <div class="ex-board"></div>
                                                                                <!--지도부분을 보여주는 부분-->
                                                                                <div class="gym-map">
                                                                                    <div
                                                                                        id="map"
                                                                                        style="width:100%;height:100%;  border-radius: 15px 15px 15px 15px;">
                                                                                        <script>
                                                                                            //마커에 정보등록 표시
                                                                                            var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
                                                                                            var options = {
                                                                                                //지도를 생성할 때 필요한 기본 옵션
                                                                                                center: new kakao
                                                                                                    .maps
                                                                                                    .LatLng(33.450701, 126.570667), //// 사용자에게 입력받은 주소!
                                                                                                level: 8, //지도의 레벨(확대, 축소 정도)

                                                                                            };
                                                                                            var map = new kakao
                                                                                                .maps
                                                                                                .Map(container, options); //지도 생성 및 객체 리턴

                                                                                            var geocoder = new kakao
                                                                                                .maps
                                                                                                .services
                                                                                                .Geocoder();
                                                                                            var callback = function (result, status) {
                                                                                                if (status === kakao.maps.services.Status.OK) {
                                                                                                    var currentPos = new window
                                                                                                        .kakao
                                                                                                        .maps
                                                                                                        .LatLng(result[0].y, result[0].x);
                                                                                                    map.panTo(currentPos)

                                                                                                    console.log(currentPos)

                                                                                                    var ps = new kakao
                                                                                                        .maps
                                                                                                        .services
                                                                                                        .Places();

                                                                                                    var options2 = {
                                                                                                        location: currentPos,
                                                                                                        radius: 10000,
                                                                                                        sort: kakao.maps.services.SortBy.DISTANCE
                                                                                                    };

                                                                                                    ps.keywordSearch('헬스장', placesSearchCB, options2);

                                                                                                    function placesSearchCB(data, status, pagination) {
                                                                                                        if (status === kakao.maps.services.Status.OK) {
                                                                                                            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해 LatLngBounds 객체에 좌표를 추가합니다
                                                                                                            for (var i = 0; i < data.length; i++) {
                                                                                                                displayMarker(data[i]);
                                                                                                            }
                                                                                                            // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                                                                                                        }
                                                                                                    }

                                                                                                    function displayMarker(place) {
                                                                                                        // 마커를 생성하고 지도에 표시합니다
                                                                                                        var marker = new kakao
                                                                                                            .maps
                                                                                                            .Marker({
                                                                                                                map: map,
                                                                                                                position: new kakao
                                                                                                                    .maps
                                                                                                                    .LatLng(place.y, place.x)
                                                                                                            });
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            geocoder.addressSearch('경기도 시흥시 하상동', callback); // 해당 부분의 사용자에게 입력받은 주소
                                                                                        </script>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </body>
                                                                </html>