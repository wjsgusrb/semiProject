<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.outer {
	color: black;
	background-color: white;
	width: 75%;
	height: auto;
	margin: auto;
	opacity: 0.7;
}

.myFeed {
	width: 100%;
	text-align: center;
}

#carouselExampleDark {
	display: flex;
	justify-content: center;
	width: 50%;
}

.user-info {
	display: flex;
	justify-content: center;
	width: 100%;
}

.user-info2 {
	display: flex;
	width: 500px;
}

.user-info3 {
	display: flex;
	width: 500px;
	justify-content: left;
	margin-top: 7px;
}

.user-info4 {
	display: flex;
	width: 500px;
	justify-content: left;
	margin-top: 12px;
}

.skip-btn {
	background: none;
	border: none;
}

.like-btn {
	background:
		url('./resources/feed-upfile/KakaoTalk_20231110_162616520_02.png')
		no-repeat;
	width: 200px;
	height: 200px;
}

.outer table {
	border: 1px solid white;
	border-collapse: collapse;
}

.outer>table tr, .outer>table td {
	border: 1px solid white;
}

.form-control {
	display: flex;
	justify-content: center;
	resize: none;
	width: 50%;
}

#heart-btn {
	width: 30px;
	height: 30px;
	justify-items: left;
	margin-right: 10px;
}

.reply-outer {
	margin-left: 20%;
	margin-right: 20%;
	font-size: 15px;
}

.form-control {
	width: 50%;
}
</style>
<!-- bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- bootstrap JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- jquery 3.7.1 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/fd91061247.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<jsp:include page="/views/common/menubar.jsp" />

	<div class="outer">


		<div align="right">
			<a href="enrollForm.fe"
				class="btn btn-primary">피드등록</a>
		</div>


		<div class="myFeed">
			<c:forEach var="f" items="${list}">
				<div class="user-info">
					<div class="user-info2">
						<i style="float: left; margin-top: 5px;"
							class="fa-regular fa-user fs-1"></i>
						<p style="float: left; margin-left: 20px; margin-top: 15px;">${f.userNo}</p>
					</div>
				</div>

				<div class="user-info">
					<div id="carouselExampleDark" class="carousel carousel-dark slide">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleDark"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleDark"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleDark"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active" data-bs-interval="10000">
								<img src="./${f.feedUrl}${f.changeName }" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item" data-bs-interval="2000">
							 	<img src="./${f.feedUrl}${f.changeName }" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="./${f.feedUrl}${f.changeName }" class="d-block w-100"
									alt="...">
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleDark" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleDark" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
				</div>

				<div class="user-info">
					<div onclick="countLike()" class="user-info3">
						<input type="image"
							src="./resources/feed-upfile/KakaoTalk_20231110_162616520_02.png"
							style="width: 27px; height: 27px; margin-right: 10px;">
						<p id="like"></p>
					</div>
				</div>

				<script>
			
                countLike= () =>{
                    $.ajax({
                        url: "countLike.fe",
                        data:{
                            feedNo : "${f.feedNo}"
                        },
                        success:(result)=>{
							console.log(result)
                            document.querySelector("#like").innerText = "좋아요 "+result+"개"
                        },
                        error:()=>{

                        }

                    })
                }
            </script>
				<div class="user-info">
					<div class="user-info4">
						<p style="margin-right: 5px;">
							${f.userNo} <br>
						</p>
						<p>${f.feedText}</p>
					</div>
				</div>

				<div id="reply-area" class="reply-outer">
					<table id="replyArea" class="table" align="center">
						<thead>
							<tr>
								<th colspan="2"><textarea class="form-control" id="content"
										cols="50" rows="2" placeholder="댓글을 입력하세요"></textarea></th>
								<th style="vertical-align: middle"><button
										class="btn btn-primary" onclick="addReply();">댓글등록</button></th>
							</tr>
							<tr>
								<td>댓글(<span id="rcount">2</span>)
								</td>
							</tr>
							<tr>
								<th>user07</th>
								<td>화이팅화이팅!</td>
								<td>2023-11-10</td>
							</tr>
							<tr>
								<th>user08</th>
								<td>이욜~~~</td>
								<td>2023-11-09</td>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>

				</div>
			</c:forEach>
		</div>
		<br>

		<div id="pagingArea" style="text-align: center;">
			<ul class="pagination"
				style="display: flex; justify-content: center; list-style: none; padding: 0;">
				<c:choose>
					<c:when test="${pi.currentPage eq 1 }">
						<li class="page-item disabled"><a class="page-link">Previous</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="list.fe?cpage=${pi.currentPage - 1 }">Previous</a></li>
					</c:otherwise>
				</c:choose>

				<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
					<li class="page-item" style="margin: 0 5px;"><a
						class="page-link" href="list.fe?cpage=${p }">${p }</a></li>
				</c:forEach>

				<c:choose>
					<c:when test="${pi.currentPage eq pi.maxPage }">
						<li class="page-item disabled"><a class="page-link">Next</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="list.fe?cpage=${pi.currentPage + 1 }">Next</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>

</body>
</html>