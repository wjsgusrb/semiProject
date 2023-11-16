<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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


	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	
	
	<style>
		.board-Detail{
			color: black;
			background-color: white;
			width: 75%;
			height: auto;
			margin: auto;
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
			/* display: flex; */
			width:auto;

		}
		.detail-img{
			
			margin-top: 10%;
			width: 300px;
			height: 300px;
			background-color: gray;
			border-radius: 15px;
			/* margin-left: 30px; */
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
			<div align="right"><p style="margin-right: 5%;">${b.userNo} 조회수 ${b.boardCount}    ${b.updateDate}</p></div>
		</div>
        <br>
		<div class="detail-area" align="center">
			<div class="detail-img-area" align="center">
				<c:if test="${ !empty bImg.changeName}">
					<img src="${bImg.boardImg}${bImg.changeName}" style="margin-bottom: 25px; max-width: 500px;">
				</c:if>	 
			</div>
			<div class="detail-area-content">
				${b.boardContent}
			</div>
		</div>
		<hr>
		
		<table id ="board-comment" class="table" algin="center">
			<thead>
				<c:choose>
						<c:when test="${ empty loginUser }">
							<tr>
								<th colspan="2">
									<textarea class="form-control" readonly cols="55" rows="2" style="resize:none; width:100%;">로그인 후 이용 가능합니다.</textarea>
								</th>
								<th style="vertical-align:middle"><button class="btn btn-secondary disabled">등록하기</button></th>
							</tr>
						</c:when>
						<c:otherwise>
							<tr> 
								<th colspan="2">
									<textarea class="form-control" id="content" cols="55" rows="2" style="resize:none; width:100%;"></textarea>
								</th>
								<th style="vertical-align:middle"><button class="btn btn-secondary" onclick="addComment();">등록하기</button></th>
							</tr>
						</c:otherwise>
				</c:choose>  
				<tr>
					<td colspan="3">댓글(<span id="rcount">3</span>)</td>
				</tr> 
			</thead>
			<tbody>

			</tbody>
		</table>
		
		 <script>
	
		 
		 	$(function(){
		 			loadBoardImg();
			})
		 	
		 	function loadBoardImg(){
		 		$.ajax({
					url : "selectImg.bo" ,
					data : {'boardNo' : "${Board.boardNo}"},
					success: function(boardImg){
						let str = "";
						if(boardImg != '"NNN"'){
							str += ('<img src="/ex/'+ boardImg +'" style="width: 200px; height: 200px;" />')
							
						}else{
						}
						document.querySelector(".detail-img").innerHTML = str;
					},
					error: function(){
						console.log("selectImg ajax 실패");
					}
				})
			}
		 	
		 
		 
			window.onload =() =>{
				selectCommentList();
			}

            function selectCommentList(){
                $.ajax({
                    url: "clist.bo",
                    data: {
                    bno: "${b.boardNo}"
                    },
					
                    success: function(list){
                        let str = "";
                        for ( comment of list) {
                            str += ("<tr>" +
                                        "<th>"+ comment.userName +"</th>" +
                                        "<td>"+ comment.boardCommentContent +"</td>" +
                                        '<td><button type="button" style="width: 50%;" class="btn btn-outline-primary"> 답글 </button></td>' +
                                    "</tr>")
                        }
							document.querySelector("#board-comment tbody").innerHTML = str;
							
							document.querySelector("#rcount").innerHTML = list.length;         
							

                        //$("#replyArea tbody").html(str);
                    },
                    error: function(){
						console.log("rlist.bo ajax통신 실패");
                    }
                })
            }
            
            //댓글을 추가해주는 메서드
            function addComment(){
            	$.ajax({
                    url: "cinsert.bo",
                    data: {
                    	boardNo: '${b.boardNo}',
            			boardContent: $("#content").val(),
						userNo : '${loginUser.userNo}'
                    },
                    success: function(res){
                             //성공시 다시 그려주기
								console.log(res)
							 if(res>0 ){
								 document.getElementById("content").value = "";
								selectCommentList();
							 }else{
								console.log("요청실패")
							 }
							 
						// if (res === "success"){
						// 	selectCommentList();
						// 	$("#content").val("");
						// }
                    },
                    error: function(){
						console.log(" ajax통신 실패");
                    }
                })
            }
        </script>
		
		<hr>
		
		
		
		<!-- 
			<div class="form-floating" style="display: flex;">
				<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
				<label for="floatingTextarea">댓글 작성</label>
				<button type="button" style="width: 15%;" class="btn btn-outline-primary">작성</button>
			</div>
		 -->
		
	
		
	
		<div align="right" style="margin-top: 25px;">
			<a class="btn btn-sm btn-secondary" href="updateForm.bo?bno=${b.boardNo}">수정</a>
			<a class="btn btn-sm btn-secondary" href="delete.bo?bno=${b.boardNo}">삭제</a>
			<a class="btn btn-sm btn-secondary" href="list.bo?cpage=1">목록가기</a>

		</div>	
		
		
	</div>	
	
	</body>
</html>