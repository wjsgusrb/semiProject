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
            <h3>등 운동 </h3> 
        </div>
    
    
        <div class="container" >
        
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/TUow8Td2ZY4?si=LgwZMkSWDRVVe_Sn" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/7K7EwlwQ2zE?si=2VpFO7I-Idwo5yfm title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>

		</div>
        
		
		<div style="margin-bottom: 50px; margin-left: 50px; ">
            <p> 바벨로우는 바벨을 이용하여 등 근육을 단련하는 운동입니다. </p>
            <p>활성화되는 주요 근육은 광배근, 승모근(중간 및 하부 모두) 및 후방 삼각근입니다.  </p>
            <p>바벨을 들어 올릴 때는 등의 근육을 사용하여 팔꿈치를 뒤로 보낸다는 느낌으로 바벨을 몸쪽으로 당깁니다. </p>
            <p>바벨을 당길때는 최대한 몸과 밀착하여 수직으로 당깁니다. </p>
            
            <p> 덤벨 로우는 광배근을 집중적으로 발달시키는 운동으로, 더 넓고 인상적인 등을 만들고자 하는 분들을 위한 훌륭한 운동입니다. </p>
            <p> 광배근은 등을 덮고 있는 큰 근육으로, 등의 넓이를 결정합니다. </p>
            <p> 덤벨 로우를 통해 광배근을 발달시키면 넓고 웅장한 등 근육을 만들 수 있습니다. </p>
            
     
             <br><br>
         </div>


        
    </div>
		
		
		
		
		
	</body>
</html>