<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        color: black;
        width: 100%;
        height: 2000px;
        margin: auto;
    }
    #enroll-form table{
        border: 1px solid white;
        width: 50%;
        
    }
    #enroll-form input, #enroll-form textarea{
        width: 100%;
        box-sizing: border-box;
    }

    .bottom-btn{
        margin: 0 auto;
        text-align: center;
    }
    </style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div class="outer" align="center">
        <br>
        <h2 align center style="background-color: #0d6efd; color: white;">게시글 작성하기</h2>
        <br>

        <form id="enroll-form" action="" method="" enctype="">
            <!-- 카테고리, 제목, 내용, 첨부파일 한 개-->
            <table>
                <tr>
                    
                    <td width="500">
                        <select name="category">
                            <!-- category 테이블로부터 조회해오기 -->
                            <option value="운동정보">카테고리</option>
                            <option value="운동정보">운동정보</option>
                            <option value="식단정보">식단정보</option>
                            <option value="운동피드백">운동피드백</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    
                    <td><input type="text" name="title" required placeholder="제목을 입력하세요"></td>
                </tr>
                <tr>
                   
                    <td><textarea name="content"rows="10" style="resize: none;" placeholder="내용을 입력하세요" required></textarea></td>
                </tr>
                <tr>
                    
                    <td><input type="file" name="upfile"></td>
                </tr>
            </table>

            <br>

            <div class="bottom-btn">
                <a href="" class="btn btn=sm btn-secondary">등록</a>
                <a href="" class="btn btn=sm btn-secondary">취소</a>
            </div>
        </form>
    </div>
</body>
</html>