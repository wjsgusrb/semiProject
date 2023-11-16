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
		background: #e0f0f3;
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


	.container{
	        	display:flex;
	        	justify-content: space-around;
	            text-align: center;
	            margin-top: 40px;
	            margin-bottom: 50px;

				
	}
</style>

</head>


<div>
    <jsp:include page="/views/common/menubar.jsp" />

    <div class="outer" >
        <br>
        <h2 style="margin-left: 30px; text-align: center; margin-top: 50px;">MuscleMap</h2>
        <br>

		<div class="container">
		
			<div id="bodyImg" style="flex: 1;">
				<img  width="480px" src="/ex/resources/board_upfile/muscle.jpg" alt="humanbody">
			</div>
		
				<div class="list-group" style="  flex: 1; margin-left: 30px; margin-top:10px">
				
				<div> 부위 클릭시 부위별 운동방법 영상 시청 가능</div>
				<br>
					<a class="list-group-item list-group-item-action active" aria-current="true">
					운동부위
					</a>
					<a href="${pageContext.request.contextPath}/views/muscleMap/muscleMapShoulder.jsp" class="list-group-item list-group-item-action">어깨</a>
					<a href="${pageContext.request.contextPath}/views/muscleMap/muscleMapChest.jsp" class="list-group-item list-group-item-action">가슴</a>
					<a href="${pageContext.request.contextPath}/views/muscleMap/muscleMapAbs.jsp" class="list-group-item list-group-item-action">복근</a>
					<a href="${pageContext.request.contextPath}/views/muscleMap/muscleMapArm.jsp" class="list-group-item list-group-item-action">삼두, 이두</a>
					<a href="${pageContext.request.contextPath}/views/muscleMap/muscleMapLeg.jsp" class="list-group-item list-group-item-action">하체</a>
					<a href="${pageContext.request.contextPath}/views/muscleMap/muscleMapCore.jsp" class="list-group-item list-group-item-action">코어</a>
					<a href="${pageContext.request.contextPath}/views/muscleMap/muscleMapBack.jsp" class="list-group-item list-group-item-action">등</a>
				</div>
		
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
	</div>		
</body>
</html>