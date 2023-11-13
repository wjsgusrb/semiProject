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
        width: 55%;
        
    }
    #enroll-form input, #enroll-form textarea{
        width: 100%;
        box-sizing: border-box;
    }

    .bottom-btn{
        margin: 0 auto;
        text-align: center;
    }
    select {
        width: 150px;
        height: 35px;
        background: url('https://freepikpsd.com/media/2019/10/down-arrow-icon-png-7-Transparent-Images.png') calc(100% - 5px) center no-repeat;
        background-size: 20px;
        padding: 5px 30px 5px 10px;
        border-radius: 2px;
        outline: 0 none;
    }
    select option {
        background: black;
        color: #fff;
        padding: 3px 0;
    }
    </style>
</head>
<body>
    <jsp:include page="/views/common/menubar.jsp" />

    <div class="outer" align="center">
        <br>
        <h2 align center style="background-color: #0d6efd; color: white; width: 55%;">게시글 작성하기</h2>
        <br>

        <form id="enroll-form" action="" method="" enctype="">
            <!-- 카테고리, 제목, 내용, 첨부파일 한 개-->
            <input type="hidden" name="userNo" value="<%=loginUser.getUserNo() %>">
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
                    <td>
                        <input class="form-control" type="file" id="formFileDisabled">
                    </td>
                </tr>
            </table>

            <br>

            <div class="bottom-btn">
                <a href="boardListView.jsp" class="btn btn-primary">등록</a>
                <a type="reset" class="btn btn-danger">취소</a>
            </div>
        </form>
    </div>
</body>
</html>