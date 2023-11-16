<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery 3.7.1 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
</head>
<style>
.middle-area>div>div {
	background-color: white;
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
	width: 900px;
	height: 400px;
	opacity: 0.6;
	border: none;
}

.ex-login {
	width: 450px;
	height: 400px;
	opacity: 0.7;
	padding-top: 5%;
	border: none;
}

.ex-checkFrendsEx {
	width: 450px;
	height: 400px;
	opacity: 0.7;
	border: none;
}

.ex-board {
	width: 450px;
	height: 400px;
	opacity: 0.7;
	border: none;
}

.gym-map {
	width: 450px;
	height: 400px;
	opacity: 0.7;
	border: none;
}

.none {
	display: none;
}

.click {
	cursor: pointer;
}

.ex-checkFrendsEx-top {
	margin-top: 40px;
	margin-bottom: 50px;
	font-size: 20px;
	color: black;
	font-weight: 600;
}

.ex-checkFrendsEx-middle {
	display: flex;
	align-items: center;
	justify-content: space-around;
}

.ex-board-top {
	margin-top: 20px;
	margin-bottom: 20px;
	font-size: 20px;
	color: black;
	font-weight: 600;
}

.join {
	width: 80%;
	margin-top: 5%;
}

.checkFrends {
	display: none;
}

.active {
	display: block;
}

.login-user-button-area {
	display: flex;
	justify-content: center;
}
</style>
<body onload="init()">
	<jsp:include page="/views/common/menubar.jsp" />
	<div  class="middle-area">
		<div class="middle-area-top">
			<!--차트 정보를 보여주는 부분-->
			<div class="ex-chart" align="letf">
				<div style="width: 100%; height: 100%;">
					<canvas id="myChart"></canvas>
				</div>
				
			</div>
			<script>
				
			</script>
			<!--로그인을 화면을 보여주는 부분-->

			<c:choose>
				<c:when test="${ empty loginUser }">
					<!--로그인 하기 전 화면-->
					<form action="login.me" method="post">
						<div class="ex-login" align="center">
							<!-- form태그에서 키값은 name으로 설정한다! 해당 input에 name태그가 없어서 값을 못찾아온듯 -->
							<div class="form-floating mb-3" style="width: 70%;">
								<input type="text" class="form-control" name="userId"
									id="floatingInput" placeholder="name@example.com"> <label
									for="floatingInput">Id</label>
							</div>
							<div class="form-floating" style="width: 70%";>
								<input type="password" name="userPwd" class="form-control"
									id="floatingPassword" placeholder="Password"> <label
									for="floatingPassword">Password</label>
							</div>
							<button class="btn btn-primary"
								style="width: 70%; margin-top: 5%;" type="submit">loign~</button>

							<div style="margin-top: 2%;">
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#staticBackdrop"
									style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
									회원가입</button>




								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#exampleModal"
									data-bs-whatever="@mdo"
									style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">

									비밀번호찾기</button>
							</div>
						</div>
		</div>
		</form>
		</c:when>
		<c:otherwise>
			<!--로그인 했을 때의 화면-->
			<div class="ex-login" align="center">
				<div style="margin-bottom: 10px;" class="login-user-img">
					<i class="fa-solid fa-user fa-10x"></i>
				</div>
				<div>${ loginUser.userName }</div>
				<br>
				<div class="login-user-button-area">
					<div>
						<a href="myPage.me" type="button" class="btn btn-outline-primary"
							style="margin-right: 20px;">myPage</a>
					</div>
					<div>
						<a href="logout.me" type="button" class="btn btn-outline-primary"
							style="margin-right: 20px;">logout</a>
					</div>
				</div>
			</div>
		</c:otherwise>
		</c:choose>


	</div>
	<div class="middle-area-bottom">
		<!--친구 요청목록 보여주는 부분 -->
		<div class="ex-checkFrendsEx" align="center">
			<div class="ex-checkFrendsEx-top">친구 요청 목록</div>
			<div class="ex-checkFrendsEx-middle">
				<i class="fa-regular fa-circle-left fa-2xl click"
					onclick="PreviousFrendsCheck()"></i>
				<div id="getFriendMain">

				</div>
				<i class="fa-regular fa-circle-right fa-2xl click"
					onclick="nextFrendsCheck()"></i>
			</div>
			<div>
				<button  type="button" class="btn btn-outline-primary"
					style="margin-right: 5%;" onclick="successFriedsPost()">친구수락</button>
				<button type="button" onclick="deleteFriendsPost()" class="btn btn-outline-primary">삭제</button>
			</div>
		</div>
	
		<!--운동게시글 보여주는 부분-->
		<div class="ex-board" align="center">
			<div class="ex-board-top"><a href="list.bo?cpage=1" style="color: black;">자유게시판</a></div>
			<table class="table  table-hover"
				style="border-radius: 0 0 15px 15px;">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">작성자</th>
						<th scope="col" colspan="2">글제목</th>
						<th scope="col"></th>
						<th scope="col">조횟수</th>
						<th scope="col">등록날짜</th>
					</tr>
				</thead>
				<tbody>
				
				</tbody>
			</table>
		</div>
		<!--지도부분을 보여주는 부분-->
		<div class="gym-map">
			<div id="map"
				style="width: 100%; height: 100%; border-radius: 15px 15px 15px 15px;">
			</div>
		</div>
	</div>
	
	</div>
<script>
	//마커에 정보등록 표시
				var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
				var options = {
					//지도를 생성할 때 필요한 기본 옵션
					center : new kakao.maps.LatLng(33.450701, 126.570667), //// 사용자에게 입력받은 주소!
					level : 8, //지도의 레벨(확대, 축소 정도)

				};
				var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

				var geocoder = new kakao.maps.services.Geocoder();
				var callback = function(result, status) {
					if (status === kakao.maps.services.Status.OK) {
						var currentPos = new window.kakao.maps.LatLng(
								result[0].y, result[0].x);
						map.panTo(currentPos)

						console.log(currentPos)

						var ps = new kakao.maps.services.Places();

						var options2 = {
							location : currentPos,
							radius : 10000,
							sort : kakao.maps.services.SortBy.DISTANCE
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
							var marker = new kakao.maps.Marker({
								map : map,
								position : new kakao.maps.LatLng(place.y,
										place.x)
							});
						}
					}
				}
				geocoder.addressSearch('경기도 시흥시 하상동', callback); // 해당 부분의 사용자에게 입력받은 주소


				
</script>


	<!--회원가입 모달창-->
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3>join</h3>
				</div>
				<div class="modal-body">
					<form action="insert.me" id="enroll-form" method="post">
						<div class="form-floating join">
							<input type="text" class="form-control" id="idCheck"
								placeholder="Password" name="userId" required> <label
								for="idCheck">id</label>

							<button type="button" id="idCheckButton" class="btn btn-primary">중복확인</button>

							<!--유효성 검사 후 사용가능인지 불가능인지 알려줌-->
						</div>
						<div class="form-floating join";>
							<input type="password" class="form-control" id="userPwd"
								placeholder="Password" name="userPwd" required> <label
								for="floatingPassword">Password</label>
						</div>
						<div class="form-floating join";>
							<input type="password" class="form-control" id="userPwdCheck"
								name="userPwdCheck" placeholder="Password"> <label
								for="floatingPassword" required>checkPassword</label>

						</div>
						<div class="form-floating join";>
							<input type="text" class="form-control" id="floatingPassword"
								placeholder="Password" name="userName" required> <label
								for="floatingPassword">name</label>
						</div>
						<div class="form-floating join";>
							<input type="text" class="form-control" id="floatingPassword"
								placeholder="Password" name="address" required> <label
								for="floatingPassword">email</label>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" disabled
								onclick="return checkPwd();">가입확인</button>

						</div>


					</form>
					<script>
					
					
					
						
						document.addEventListener("DOMContentLoaded", function() {
					        document.querySelector("#idCheckButton").addEventListener("click", checkIdDuplicate);
					    });
						   function checkIdDuplicate(){
				            	
							   const idInput = document.querySelector("#idCheck");
							  
				            	console.log(idInput.value);
				            	
				            	$.ajax({
				            		url: "idCheck.me",
				            		data: {
				            			"checkId" : idInput.value
				            		},
				            		success: function(result){
										 if(result === "NNNNY") {
											 if (confirm("사용가능한 아이디입니다. 사용하시겠습니까?")) {
												 
												 let submitBtn = document.querySelector("#enroll-form button[type=submit]");
												 submitBtn.removeAttribute("disabled");
												 
												 idInput.setAttribute("readonly", true);
											 } else {
												 idInput.focus();
											 }
										 } else {
											 alert("이미 존재하거나 탈퇴한 회원입니다.");
											 idInput.focus();
										 }
				            		},
				            		error: function(){
				            			console.log("아이디 중복체크용 ajax통신실패");
				            		}
				            	})
				            }
						   
						   function checkPwd(){
				                let pwdInput = document.querySelector("#enroll-form input[name=userPwd]");
				                let pwdCheckInput = document.querySelector("#enroll-form input[name=userPwdCheck]");
				                if (pwdInput.value !== pwdCheckInput.value) {
				                    alert("비밀번호가 일치하지 않습니다.");
				                    return false; 
				                }
				            }
					</script>

				</div>

			</div>
		</div>
	</div>

	<!-- 아이디 비밀번호찾기 모달 -->
	
	
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">아이디와 이메일을 입력하시오</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">아이디:</label>
							<input type="text" class="form-control" id="pwdIdCheck" name="pwdIdCheck">
						</div>
						<div class="mb-3">
							<label for="message-text" class="col-form-label">주소:</label>
							<input type="text" class="form-control" id="pwdEmailCheck" name="pwdEmailCheck">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" id="findPwd" onclick="findPwd();"  class="btn btn-primary">비밀번호찾기</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
		<script>

		 function findPwd() {
			    const idInput = document.querySelector("#pwdIdCheck").value;
			    const emailInput = document.querySelector("#pwdEmailCheck").value;

			    if (idInput && emailInput) {
			        $.ajax({
			            url: "findPwd.me",
			            type: "post",
			            data: {
			                idInput: idInput,
			                emailInput: emailInput
			            },
			            success: function (res) {
			                // Assuming res is a JSON object with a userPwd property
			                const userPwd = res;

			                // Display the userPwd value in the modal
			                 document.querySelector("#exampleModal .modal-header").innerHTML = "<h3>" +"귀하의 패스워드는" + "</h3>";
			                document.querySelector("#exampleModal .modal-body").innerHTML = "<h3>" + userPwd +"입니다."+ "</h3>";
			                console.log(res);
			            },
			            error: function () {
			                console.log("비밀번호 찾기 중 ajax 통신 실패");
			            }
			        });
			    } else {
			        document.querySelector("#findId.modal-body").value = '';
			    }
			}
	</script>
</body>
</html>