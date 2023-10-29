<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
          </head>
        <style>
            .middle-area > div > div {
                background-color: rgb(148, 148, 148);
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
               
                padding-top: 5%;
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

          

            .none{
                display: none;
            }
            .click{
                cursor: pointer;
            }
            .ex-checkFrendsEx-top{
                margin-top: 40px; 
                margin-bottom: 50px;
                font-size: 20px;
                color: black;
                font-weight: 600;
            }
            .ex-checkFrendsEx-middle{
               display: flex;
               align-items: center;
               justify-content:space-around;
               
            }
            .ex-board-top{
                margin-top: 20px; 
                margin-bottom: 20px;
                font-size: 20px;
                color: black;
                font-weight: 600;
            }
           .join{
                width: 80%;
                margin-top: 5%;

           }
       
        </style>
        <body>
            <%@ include file="/views/common/menubar.jsp" %>
    
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
                        <div class="ex-login" align="center">
                            <div class="form-floating mb-3" style="width: 70%;">
                                <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
                                <label for="floatingInput">Id</label>
                              </div>
                              <div class="form-floating" style="width: 70%";>
                                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                                <label for="floatingPassword">Password</label>
                              </div>
                              <button class="btn btn-primary" style="width: 70%; margin-top: 5%;" type="button">loign~</button>
                              <div style="margin-top: 2%;">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                                    style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
                                 회원가입
                                </button>
                          
                              
                          
                                <button type="button" class="btn btn-primary"
                                        style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
                                아이디 비밀번호 찾기
                                </button>
                              </div>
                                
                        </div>
                    </div>
                    <div class="middle-area-bottom">
                        <!--친구 요청목록 보여주는 부분 -->
                        <div class="ex-checkFrendsEx" align="center">
                            <div class="ex-checkFrendsEx-top">친구 요청 목록</div>
                            <div class="ex-checkFrendsEx-middle">
                                <i class="fa-regular fa-circle-left fa-2xl click" onclick="PreviousFrendsCheck()"></i>
                                <div>
                                    <div class="checkFrends">
                                        <i class="fa-regular fa-user fa-10x"></i> <!--만약 사용자 프로필이 있다면 해당 프로필 처리-->
                                       
                                        <br>
                                        <p>차정석</p>            
                                    </div>
                                    <div class="checkFrends">
                                        <i class="fa-regular fa-user fa-10x" ></i> <!--만약 사용자 프로필이 있다면 해당 프로필 처리-->
                                        <br>
                                        <p>김기만</p>   
                                    </div>
                                    <div class="checkFrends">
                                        <i class="fa-regular fa-user fa-10x" ></i> <!--만약 사용자 프로필이 있다면 해당 프로필 처리-->
                                        <br>
                                        <p>정혜원</p>   
                                    </div>
                                    <div class="checkFrends">
                                        <i class="fa-regular fa-user fa-10x" ></i> <!--만약 사용자 프로필이 있다면 해당 프로필 처리-->
                                        <br>
                                        <p>윤승희</p>   
                                    </div>
                                    <div class="checkFrends">
                                        <i class="fa-regular fa-user fa-10x" ></i> <!--만약 사용자 프로필이 있다면 해당 프로필 처리-->
                                        <br>
                                        <p>전현규</p>   
                                    </div>
                                </div>
                                <i class="fa-regular fa-circle-right fa-2xl click" onclick="nextFrendsCheck()"></i>
                        </div>
                            <div>
                                <button type="button" class="btn btn-outline-primary" style="margin-right: 5%;">친구수락</button>
                                <button type="button" class="btn btn-outline-primary">삭제</button>   
                            </div>
                        </div>
                        <script>
                            const changeCheckFrends =  document.getElementsByClassName("checkFrends");
                            window.onload = () =>{
                            for(let frends of changeCheckFrends){
                                frends === changeCheckFrends[0] ? "":   frends.classList.add("none");
                            }
                           }
                           function PreviousFrendsCheck(){
                            for(const frends of changeCheckFrends){
                                if(frends.classList.length === 1){
                                    frends.classList.add("none");
                                    frends.previousElementSibling.classList.remove("none");
                                    break;
                                }
                            }
                          
                           } 
                           function nextFrendsCheck(){
                            for(const frends of changeCheckFrends){
                                if(frends.classList.length === 1){
                                    frends.classList.add("none");
                                    frends.nextElementSibling.classList.remove("none");
                                   
                                    break;
                                }
                              
                            }
                          
                           } 
                         
                        </script>
                        <!--운동게시글 보여주는 부분-->
                        <div class="ex-board" align="center">
                            <div class="ex-board-top">자유게시판</div>
                            <table class="table  table-hover" style="border-radius: 0 0 15px 15px;" >
                                <thead>
                                    <tr>
                                      <th scope="col">#</th>
                                      <th scope="col">작성자</th>
                                      <th scope="col"colspan="2">글제목</th>
                                      <th scope="col"></th>
                                      <th scope="col">조횟수</th>
                                      <th scope="col">등록날짜</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>차정석</td>
                                      <td colspan="2">어깨운동</td>
                                      <td></td>
                                      <td>15</td>
                                      <td>2023-05-06</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>차정석</td>
                                        <td colspan="2">어깨운동</td>
                                        <td></td>
                                        <td>15</td>
                                        <td>2023-05-06</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>차정석</td>
                                        <td colspan="2">어깨운동</td>
                                        <td></td>
                                        <td>15</td>
                                        <td>2023-05-06</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>차정석</td>
                                        <td colspan="2">어깨운동</td>
                                        <td></td>
                                        <td>15</td>
                                        <td>2023-05-06</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>차정석</td>
                                        <td colspan="2">어깨운동</td>
                                        <td></td>
                                        <td>15</td>
                                        <td>2023-05-06</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>차정석</td>
                                        <td colspan="2">어깨운동</td>
                                        <td></td>
                                        <td>15</td>
                                        <td>2023-05-06</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>차정석</td>
                                        <td colspan="2">어깨운동</td>
                                        <td></td>
                                        <td>15</td>
                                        <td>2023-05-06</td>
                                    </tr>
                                </tbody>
                              </table>
                        </div>
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



                <!--회원가입 모달창-->
                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 >join</h3>
                        </div>
                        <div class="modal-body">
                            <form action="" >
                                <div class="form-floating join"  ;>
                                    <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">id</label>
                                    <p style="font-size: 8pt;">사용가능한 아이디입니다.</p> <!--유효성 검사 후 사용가능인지 불가능인지 알려줌-->
                                </div>
                                <div class="form-floating join" ;>
                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">Password</label>
                                </div>
                                <div class="form-floating join" ;>
                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">checkPassword</label>
                                    <p style="font-size: 8pt;">비밀번호가 다름니다.</p> 
                                </div>
                                <div class="form-floating join" ;>
                                    <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">name</label>
                                </div>
                                <div class="form-floating join" ;>
                                    <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">address</label>
                                </div>
                               
                                
                            </form>
                                
                               
                            </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">가입확인</button>
                        </div>
                    </div>
                    </div>
                </div>
            </body>
        </html>