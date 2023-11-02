<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
	
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5df6089610150bf39081f4bdb1c7356a&libraries=services"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<title>Insert title here</title>

	<style>
	body {
		height: 100vh;
		background-color: #d6d7dc;
	}
	
	.top-var {
		width: auto;
		height: auto;
		margin-top: 50px;
		padding: 100px;
	}
	
	a {
		text-decoration: none;
		color: white;
	}
	
	.nav-link:hover {
		background-color: #0d62fd;
		color: white;
	}
	
	.outer {
		background: rgb(165, 173, 179);
		color: rgb(32, 28, 28);
		width: 1000px;
		height: auto;
		margin: auto;
		margin-top: 50px;
	}
	
	#bodyImg {
		position: relative;
		margin: auto;
		/* position: fixed; */
	}


</style>

</head>


<body>
       <!--상단바를 보여주는 부분-->
       <div class="top-var" style=" border-radius: 15px 15px 15px 15px;">
        <ul
            class="nav nav-pills nav-fill "
            style="background-color: white; color: white;  border-radius: 20px 20px 20px 20px;">
            <li class="nav-item">
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




    <div class="outer" >
        <br>
        <h2 style="margin-left: 30px;">머슬지도</h2>
        <br>

    <div style="margin-left: 30px;">부위별운동</div>
    <div style="margin-left: 30px;"> - 부위 클릭시 부위별 운동방법 영상 시청 가능</div>
        
    

    <div id="bodyImg" align="center">
        <img width="300px" src="/ex/resources/board_upfile/humanbody.png" alt="humanbody">
    </div>
    
    <div class="list-group">
        <a class="list-group-item list-group-item-action active" aria-current="true">
          운동부위
        </a>
        <a href="#" class="list-group-item list-group-item-action">어깨</a>
        <a href="#" class="list-group-item list-group-item-action">가슴</a>
        <a href="#" class="list-group-item list-group-item-action">복근</a>
        <a href="#" class="list-group-item list-group-item-action">삼두, 이두</a>
        <a href="#" class="list-group-item list-group-item-action">하체</a>
        <a href="#" class="list-group-item list-group-item-action">코어</a>
        <a href="#" class="list-group-item list-group-item-action">등</a>
      </div>




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