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
            <h3>복근 운동 </h3> 
        </div>
    
    
        <div class="container" >
        
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/0_j8aoQbTrk?si=p6ngsinxCuq1lpfy	" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/6cg-dArdqwQ?si=6qawAhhGqbZx09BC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>

		</div>
        
		
		<div style="margin-bottom: 50px; margin-left: 50px; ">
            <p> 상부 복근은 갈비뼈 아래 쪽에서 시작하여 허리와 척추를 지지하며 몸을 구부릴 때 주요하게 작용하는 복근 근육입니다.  </p>
            <p> 크런치는 이 근육을 직접적으로 자극하는 효과적인 운동 중 하나이며,  </p>
            <p>운동 시 엉덩이를 들어 올리지 않도록 주의해야 합니다.  </p>
            <p> 덤벨 크런치는 덤벨의 무게를 이용하여 복근 근육을 집중적으로 타겟팅하여 </p>
            <p> 더 강력하고 단단한 복근을 형성하는 데 도움이 됩니다. </p>
            
     
             <br><br>
         </div>


        
    </div>
		
		
		
		
		
	</body>
</html>