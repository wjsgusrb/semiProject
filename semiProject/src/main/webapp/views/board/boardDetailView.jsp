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
		
		.outer {
			background: rgb(165, 173, 179);
			color: rgb(32, 28, 28);
			width: 1000px;
			height: auto;
			margin: auto;
			margin-top: 50px;
		}
		.outer table{
        border: 1px solid white;
        border-collapse: collapse;
	    }
	    .outer table tr, .outer table td{
	        border: 1px solid white;
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
        <br>
        <h2 align="center">일반게시판 상세보기</h2>
        <br>

        <table id="detail-area" border="1" align="center">
            <tr>
                <th width="70">카테고리</th>
                <td width="70"> 운동정보</td>
                <th width="70">제목</th>
                <td colspan="3" width="350"> 벌크업 질문 있습니다.(20)   </td>
            </tr>
            <tr>
                <th>작성자</th>
                <td> 잠죽자~    </td>
                <th>작성일</th>
                <td>  2023.10.31 22:06 </td>
                <th width="60">댓글수</th>
                <td> 20 </td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="5">
                    <p style="height: 200px;">     </p>
                </td>
            </tr>
            <tr>
                <th>첨부파일</th>
                <td colspan="5">
               	 
                </td>
            </tr>
        </table>
        <br> 
	
	
	
		<div align="center">
            <a class="btn btn-sm btn-secondary">목록가기</a>
        </div>
        
        <div>
	        <ul class="list-group list-group-flush">
			  <li class="list-group-item">벌크업은 말이죠~ </li> 
			  <li class="list-group-item">쉽지 않음   </li>
			  <li class="list-group-item">저도 알고 싶어요  </li>
			  <li class="list-group-item">발닦아라   </li>
			</ul>
        </div>
        

        <br>

        <div id="reply-area">
            <table align="center">
                <thead>
                    <tr>
                        <th>댓글작성</th>
                        
	                        <td>
	                            <textarea id="reply-content" cols="50" rows="3"></textarea>
	                        </td>
	                        <td>
	                            <button onclick="insertReply()">댓글등록</button>
	                        </td>
                   
                    </tr>
                </thead>
                <tbody>
                    
                </tbody>
            </table>
            
    
	
	</body>
</html>