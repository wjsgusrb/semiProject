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
		c              
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
	
		.outer{
	            background: #cde0f3;
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
        <h2 style="text-align: center;">머슬지도</h2>
		<br>
        <div style="text-align: center;">
            <h3>어깨 운동 </h3> 
        </div>
    
    
        <div class="container" >
        
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://youtube.com/embed/3hYOPTgd_WQ?si=2s5IbljLMx8Vfgwn" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/twXs4ujJuGI?si=3Lm5XDTtGp_RkHcX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>

		</div>
        
		
		<div style="margin-bottom: 50px; margin-left: 50px; ">
            <p> 어깨는 상체에서 가장 중요한 관절 중 하나입니다. </p>
            <p> 어깨를 움직이면 팔을 위로 들어 올리고, 옆으로 벌리고, 뒤로 젖힐 수 있습니다. </p>
            <p> 어깨가 튼튼하면 팔을 자유롭게 움직일 수 있고, 일상생활에서 많은 동작을 쉽게 할 수 있습니다. </p>
            <P> 또한 어깨는 움직임이 많은 관절이기 때문에 부상을 입기 쉽습니다. 
               따라서 어깨 운동을 할 때는 올바른 자세와 강도를 유지하는 것이 중요합니다.</P>
     
             <br><br>
         </div>


        
    </div>
		
		
		
		
		
	</body>
</html>