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
		
			
		#bodyImg {
			position: relative;
			margin: auto;
			/* position: fixed; */
		}
	
		.outer{
	            background:  #e0f0f3;
	            color: rgb(32, 28, 28);
	            width: 1000px;
	            height: auto;
	            margin: auto;
	            margin-top: 50px;
	            margin-bottom: 50px;
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
	
	<body>
	
		 <!--상단바를 보여주는 부분-->
	      <%@ include file="../common/menubar.jsp" %>
		
		
		<div class="outer" >
        <br>
        <h2 style="text-align: center;">MuscleMap</h2>
		<br>
        <div style="text-align: center;">
            <h3>코어 운동 </h3> 
        </div>
    
    
        <div class="container" >
        
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/3hkphseQGMg?si=5ScRJhmNsn19BvK5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/RAmLOWt-_Mo?si=yC3kp2-2drUX2cIt" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>

		</div>
        
		
		<div style="margin-bottom: 50px; margin-left: 50px; ">
            <p> 운동은 건강과 체형 개선에 필수적입니다.</p>
            <p> 바쁜 일상에서도 5분 전신 운동으로 근력 강화와 체지방 감소 효과를 볼 수 있습니다.   </p>
            <p> 꾸준한 운동으로 건강한 라이프스타일을 유지하세요. </p>
            
            <p>숄더 탭(Shoulder Tap) 운동은 어깨 근육을 강화하는 데 효과적일 뿐만 아니라 코어 근육을 강화하는 데에도 효과적입니다. </p>
            <p>이 운동은 플랭크 자세를 유지해야 하기 때문에 코어 근육을 활성화시켜줍니다.</p>
     		<p>숄더탭 운동은 집에서 간편하게 할 수 있는 운동입니다. 10회씩 3세트 반복합니다.</p>
             <br><br>
         </div>


        
    </div>
		
		
		
		
		
	</body>
</html>