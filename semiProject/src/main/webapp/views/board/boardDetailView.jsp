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
		.outer{
        color: black;
		background-color: rgb(208, 222, 230);
        width: 75%;
        height: 1000px;
        margin: auto;
    	}
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
		
		
		.outer table{
        border: none;
        border-collapse: collapse;
	    }
	    .outer table tr, .outer table td{
	        border: none;
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
	
	
	 <div class="outer">
        <br><br>
        <h5>자유게시판 - 운동정보</h5>
        <h2>벌크업 질문 있어요</h2>
        <br>

        <table id="detail-area">
            
            <tr>
                <td colspan="4">김개똥 조회 10 2023.10.31 22:06 댓글 20</td>
            </tr>
			<tr>
				<td>  </td>
			</tr>
            <tr>
                <td colspan="3">
                    <div style="height: 200px;">
						시험용 테스트입니다.  시험용 테스트입니다.시험용 테스트입니다.  
						시험용 테스트입니다.  시험용 테스트입니다.시험용 테스트입니다. 
						시험용 테스트입니다.  시험용 테스트입니다.시험용 테스트입니다. 
						시험용 테스트입니다.  시험용 테스트입니다.시험용 테스트입니다. 
					</div>
                </td>
            </tr>
            <tr>
                <td colspan="4">~첨부파일 넣는 칸~ </td>
            </tr>
        </table>
        <br> 
		<hr>
        <!--
			<div>
				<ul class="list-group list-group-flush">
				  <li class="list-group-item">벌크업은 말이죠~ </li> 
				  <li class="list-group-item">쉽지 않음   </li>
				  <li class="list-group-item">저도 알고 싶어요  </li>
				  <li class="list-group-item">발닦아라   </li>
				</ul>
			</div>
		-->
        
		<div>김개똥   벌크업은 말이죠~                 <button style="float:right">답글</button>  </div><hr>
		
		<div>김개똥   벌크업은 말이죠~                 <button style="float:right">답글</button>  </div><hr>
		<div>김개똥   벌크업은 말이죠~                 <button style="float:right">답글</button>  </div><hr>
		<div>김개똥   벌크업은 말이죠~                 <button style="float:right">답글</button>  </div><hr>

        <br>

        <div id="reply-area">
            <table align="center">
                
                    <tr>
                        <th>댓글작성</th>
                        
	                        <td>
	                            <textarea id="reply-content" cols="50" rows="3"></textarea>
	                        </td>
	                        <td>
	                            <button onclick="insertReply()">댓글등록</button>
	                        </td>
                   
                    </tr>
               
            </table>
            
			<div align="right">
				<a class="btn btn-sm btn-secondary">목록가기</a>
				<a class="btn btn-sm btn-secondary">글쓰기</a>

			</div>
    
	
	</body>
</html>