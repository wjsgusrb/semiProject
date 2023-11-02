<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        background: rgb(190, 190, 190);
      
        height: 100%;
        width: 80%;
        margin: auto;
        margin-top: 50px;
    }

    .left-area{
        width: 60%;
        float: left;
        box-sizing: border-box;
        height: 800px;
        
        background:  rgb(190, 190, 190);
       
    }
    
   .right-area{
        width: 40%;
        float: right;
        box-sizing: border-box;
        height: 800px;
        
        background: rgb(190, 190, 190);
    }
    .comment{
        border: 1px solid white;
        align : center;
        max-width: 850px;
        height: 500px;
        margin-left: 5%;
        background-color: white;
        margin-right: 5%;
    }
    .thumbnail{
        border: 1px solid white;
        align : center;
        max-width: 850px;
        height: 500px;
        margin-left: 5%;
        background-color: white;
        border-radius: 40px 40px 40px 40px

    }
    .userId{
        height: 2cm;
        background-color: rgb(255, 255, 255);
        margin-left: 10%;
        margin-right: 100px;
    }
    .userLogo{
        background-color: black;
    }
    .thumbnailPart{
        height: 50%;
    }
    .peedside{
        height: 70px;
    }
    ul {
    list-style:none;
    margin:0;
    padding:0;
}

li {
    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
}
   
</style>
<!-- bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- jquery 3.7.1 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/fd91061247.js" crossorigin="anonymous"></script>
</head>

<body>
  <!--  <%@ include file="../common/menubar.jsp" %>-->

    <div class="outer">
       
        <br>
        <h5 align="center">피드작성</h5>
        <br>


	


        <div class="left-area">
	            <div class="thumbnail" align="center">   
                    <div class="userId">
                       <div style=" float: left;  height: 50px; margin-top: 15px; margin-right: 10px; width: 70px;">
                        <i class="bi bi-person-circle fs-2"></i>
                        </div>
                       <div style=" border: 1px solid rgb(176, 176, 176); float: left; height: 30px; margin-top: 25px; width: 120px; " >
                            
                        </div>
                    </div>

                    <div class="thumbnailPart">
                        <div style="  width: 15%;
                        height: 100%;
                        float: right;
                        box-sizing: border-box;
                        
                        ;
                        ">
                          <button class="bi bi-arrow-right-circle" style="margin-top: 110px;"></button>
                        </div>
                        <div style=" width: 70%;
                        height: 100%;
                        float: right;
                        box-sizing: border-box;
                        border:1px solid rgb(190, 190, 190)
                       ">
                          <img src="" alt=""> 
                        </div>
                        <div style="  width: 15%;
                        height: 100%;
                        float: left;
                        box-sizing: border-box;
                        
                       ">
                          <button class="bi bi-arrow-left-circle" style="margin-top: 110px;"></button>
                        </div>

                    </div>

                    <div class="peedside">
                        <input type="text" style="width:600px;height:60px;font-size:30px; margin-top: 10px;" value="피드내용작성">

                    </div> 
                    <div style="width: 450px;">
                        <i class="bi bi-chat-heart fs-2" style="margin-left: 380px;" ></i>
                        <i class="bi bi-chat-left fs-2"style="float: right;" ></i>
                    </div>        	
	                         
	            </div>
                
        </div>

        
        <div class="right-area">
            <div class="comment">
                <div style="height: 80%;"></div>
                <div style="height: 20%;">
                    <input type="text" style="width: 70%; margin-left: 5%;" > <button >등록</button>
                </div>

            </div>

        </div>
    </div>
    
    
    <script>
    	$(function(plus){
    		
    	})
    </script>
</body>
</html>