<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5df6089610150bf39081f4bdb1c7356a&libraries=services"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	
	
	<style>
		.board-Detail{
			color: black;
			background-color: white;
			width: 75%;
			height: auto;
			margin: auto;
			opacity: 0.7;
    	}

		a {
			text-decoration: none;
			color: white;
		}
		
		.nav-link:hover {
			background-color: #0d62fd;
			color: white;
		}
		
		
		.detail-area{
			padding: 0 20%;
		}
	
		.detail-img-area{
			display: flex;
			width:auto;

		}
		.detail-img{
			margin-top: 10%;
			width: 300px;
			height: 300px;
			background-color: gray;
			border-radius: 15px;
			opacity: 0.7;
			margin-left: 30px;
		}
		.board-comment{
			display: flex;
			justify-content: space-around;
		
		}

	</style>
</head>


	<body>
		 <!--상단바를 보여주는 부분-->
		 <jsp:include page="/views/common/menubar.jsp" />
		
	 <div class="board-Detail">
        <br><br>
		<div class="board-title" align="center">
			<h5 style="margin-bottom: 15px;">자유게시판 - 운동정보</h5>
			<h2>${b.boardTitle}</h2>
			<br>
			<div align="right"><p style="margin-right: 5%;">${b.userNo} 조회 ${b.boardCount} ${b.updateDate}</p></div>
			console.log(b.userNo);
		</div>
        <br>
		<div class="detail-area" align="center">
			<div class="detail-area-content">
				${b.boardContent}
			</div>
			<div  class="detail-img-area">
				<div class="detail-img">
				
				</div>
				<div class="detail-img">
				
				</div>
				<div class="detail-img">
				
				</div>
			</div>
		</div>
		<hr>
		<div class="board-comment" align="center">
			<div class="comentUser-img">
				<i class="fa-solid fa-user fa-3x"></i>
			</div>
			<div>${c.commentWriter}</div>
			<div>${c.commentContent}</div>
			<button type="button" style="width: 5%;" class="btn btn-outline-primary">답글</button>	
		</div>   
		<hr>
		<div class="board-comment" align="center">
			<c:forEach var="r" items="${list()}">
				<div class="comentUser-img">
					<i class="fa-solid fa-user fa-3x"></i>
				</div>
					<div>${c.commentWriter}</div>
					<div>${c.commentContent}</div>
					<div>${c.updateDate }</div>
				<button type="button" style="width: 5%;" class="btn btn-outline-primary">답글</button>	
				<hr>
				</c:forEach>
		</div>   
		
	  
		
	<div class="form-floating" style="display: flex;">
		<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
		<label for="floatingTextarea">댓글 작성</label>
		<button type="button" style="width: 15%;" class="btn btn-outline-primary">작성</button>
	</div>
		
	
		<div align="right" style="margin-top: 25px;">
			<a class="btn btn-sm btn-secondary">목록가기</a>
			<a class="btn btn-sm btn-secondary">글쓰기</a>
		</div>	
	</div>	
	
	</body>
</html>