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
            <h3>삼두, 이두 운동 </h3> 
        </div>
    
    
        <div class="container" >
        
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/BU_ZhsKegt0?si=Vm2Hcl1CG5NbOsQ9" 	" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			
			<div style="flex: 1;">
				<iframe width="450" height="450" src="https://www.youtube.com/embed/MSSaV8EaOe4?si=njFrc7EYf17wOcoI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>

		</div>
        
		
		<div style="margin-bottom: 50px; margin-left: 50px; ">
            <p> 트라이셉스 딥스 플로어 운동은 트라이셉스(삼두근)을 단련하는 운동으로 </p>
            <p>삼두근을 중심으로 어깨와 가슴을 포함한 다양한 상체 근육을 발달시키는 데 도움이 됩니다.</p>
            <p> 트라이셉스 딥스 플로어 운동은 바닥에서 실시하는 운동으로,   </p>
            <p>무게를 이용하지 않고도 간단한 동작으로 삼두근을 효과적으로 단련할 수 있으며</p> 
            <p>꾸준히 실시하면 탄탄하고 강한 팔뚝을 만들 수 있습니다. </p>
            
            <p> 바벨 리스트 컬은 손목과 전완근을 강화하는 효과적인 운동입니다. </p>
            <p> 이 운동은 전완근을 타겟으로 하여 손목의 근력과 안정성을 향상시키는 데 도움을 줍니다. </p>
            
     
             <br><br>
         </div>


        
    </div>
		
		
		
		
		
	</body>
</html>