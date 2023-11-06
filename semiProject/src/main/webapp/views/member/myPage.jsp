<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* Base Styles */
        :root {
            font-size: 10px;
        }

        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        body {
            font-family: "Open Sans", Arial, sans-serif;
            min-height: 100vh;
            background-color: #fafafa;
            color: #262626;
            padding-bottom: 3rem;
        }

        img {
            display: block;
        }

        .container {
            max-width: 93.5rem;
            margin: 0 auto;
            padding: 0 2rem;
            background: white;
            background-color: rgba( 255, 255, 255, 0.5 );
            border-radius: 25px 25px 0px 0px;
        }

        .btn {
            display: inline-block;
            font: inherit;
            background: none;
            border: none;
            color: inherit;
            padding: 0;
            cursor: pointer;
        }

        .btn:focus {
            outline: 0.5rem auto #4d90fe;
        }

        .visually-hidden {
            position: absolute !important;
            height: 1px;
            width: 1px;
            overflow: hidden;
            clip: rect(1px, 1px, 1px, 1px);
        }

        /* Profile Section */

        .profile {
            padding: 5rem 0;
        }

        .profile::after {
            content: "";
            display: block;
            clear: both;
        }

        .profile-image {
            float: left;
            width: calc(33.333% - 1rem);
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 3rem;
        }

        .profile-image img {
            border-radius: 50%;
        }

        .profile-user-settings,
        .profile-stats,
        .profile-bio {
            float: left;
            width: calc(66.666% - 2rem);
        }

        .profile-user-settings {
            margin-top: 1.1rem;
        }

        .profile-user-name {
            display: inline-block;
            font-size: 3.2rem;
            font-weight: 300;
        }

        .profile-edit-btn {
            font-size: 1.4rem;
            line-height: 1.8;
            border: 0.1rem solid #dbdbdb;
            border-radius: 0.3rem;
            padding: 0 2.4rem;
            margin-left: 2rem;
        }

        .profile-settings-btn {
            font-size: 2rem;
            margin-left: 1rem;
        }

        .profile-stats {
            margin-top: 2.3rem;
        }

        .profile-stats li {
            display: inline-block;
            font-size: 1.6rem;
            line-height: 1.5;
            margin-right: 4rem;
            cursor: pointer;
        }

        .profile-stats li:last-of-type {
            margin-right: 0;
        }

        .profile-bio {
            font-size: 1.6rem;
            font-weight: 400;
            line-height: 1.5;
            margin-top: 2.3rem;
        }

        .profile-stat-count,
        .profile-edit-btn {
            font-weight: 600;
        }

        /* Gallery Section */

        .gallery {
            display: flex;
            flex-wrap: wrap;
            margin: -1rem -1rem;
            padding-bottom: 3rem;
        }

        .gallery-item {
            position: relative;
            flex: 1 0 22rem;
            margin: 1rem;
            cursor: pointer;
        }
        .gallery-item img {
            border-radius: 50px;
            max-width: 250px;
            max-height: 300px;
            min-height: 250px;
        }
        .gallery-item:hover .gallery-item-info,
        .gallery-item:focus .gallery-item-info {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.3);
            border-radius: 50px;
            max-width: 250px;
            max-height: 300px;
            min-height: 250px;
        }

        .gallery-item-info {
            display: none;
        }

        .gallery-item-info li {
            display: inline-block;
            font-size: 1.7rem;
            font-weight: 600;
        }

        .gallery-item-likes {
            margin-right: 2.2rem;
        }

        .gallery-item-type {
            position: absolute;
            top: 1rem;
            right: 1rem;
            font-size: 2.5rem;
            text-shadow: 0.2rem 0.2rem 0.2rem rgba(0, 0, 0, 0.1);
        }

        .fa-clone,
        .fa-comment {
            transform: rotateY(180deg);
        }

        .gallery-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Loader */

        .loader {
            width: 5rem;
            height: 5rem;
            border: 0.6rem solid #999;
            border-bottom-color: transparent;
            border-radius: 50%;
            margin: 0 auto;
            animation: loader 500ms linear infinite;
        }

        /* Media Query */

        @media screen and (max-width: 40rem) {
            .profile {
                display: flex;
                flex-wrap: wrap;
                padding: 4rem 0;
            }

            .profile::after {
                display: none;
            }

            .profile-image,
            .profile-user-settings,
            .profile-bio,
            .profile-stats {
                float: none;
                width: auto;
            }

            .profile-image img {
                width: 7.7rem;
            }

            .profile-user-settings {
                flex-basis: calc(100% - 10.7rem);
                display: flex;
                flex-wrap: wrap;
                margin-top: 1rem;
            }

            .profile-user-name {
                font-size: 2.2rem;
            }

            .profile-edit-btn {
                order: 1;
                padding: 0;
                text-align: center;
                margin-top: 1rem;
            }

            .profile-edit-btn {
                margin-left: 0;
            }

            .profile-bio {
                font-size: 1.4rem;
                margin-top: 1.5rem;
            }

            .profile-edit-btn,
            .profile-bio,
            .profile-stats {
                flex-basis: 100%;
            }

            .profile-stats {
                order: 1;
                margin-top: 1.5rem;
            }

            .profile-stats ul {
                display: flex;
                text-align: center;
                padding: 1.2rem 0;
                border-top: 0.1rem solid #dadada;
                border-bottom: 0.1rem solid #dadada;
            }

            .profile-stats li {
                font-size: 1.4rem;
                flex: 1;
                margin: 0;
            }

            .profile-stat-count {
                display: block;
            }
        }

        /* Spinner Animation */

        @keyframes loader {
            to {
                transform: rotate(360deg);
            }
        }

        /*

        The following code will only run if your browser supports CSS grid.

        Remove or comment-out the code block below to see how the browser will fall-back to flexbox & floated styling. 

        */

        @supports (display: grid) {
            .profile {
                display: grid;
                grid-template-columns: 1fr 2fr;
                grid-template-rows: repeat(3, auto);
                grid-column-gap: 3rem;
                align-items: center;
            }

            .profile-image {
                grid-row: 1 / -1;
            }

            .gallery {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(22rem, 1fr));
                grid-gap: 2rem;
            }

            .profile-image,
            .profile-user-settings,
            .profile-stats,
            .profile-bio,
            .gallery-item,
            .gallery {
                width: auto;
                margin: 0;
            }

            @media (max-width: 40rem) {
                .profile {
                    grid-template-columns: auto 1fr;
                    grid-row-gap: 1.5rem;
                }

                .profile-image {
                    grid-row: 1 / 2;
                }

                .profile-user-settings {
                    display: grid;
                    grid-template-columns: auto 1fr;
                    grid-gap: 1rem;
                }

                .profile-edit-btn,
                .profile-stats,
                .profile-bio {
                    grid-column: 1 / -1;
                }

                .profile-user-settings,
                .profile-edit-btn,
                .profile-settings-btn,
                .profile-bio,
                .profile-stats {
                    margin: 0;
                }
            }
        }
        
        #follow-btn{
            width: 100px;
            margin-bottom: 10px;
        }
        .textBox{
            width: 250px;
            height: 250px;
            background-color: rgb(228, 228, 228);
            border-radius: 50px;
            align-items: center;
            justify-content: space-around;
            display: flex;
            max-width: 250px;
            max-height: 300px;
            min-height: 250px;
            width: 100%;
            height: 100%;
        }
        .textBox-btn{
            width: 25px;
            height: 25px;
        }
        .profile-user-settings{
            position: relative;
        }
        .follow-btn{
            background: none;
            border: none;
        }
    </style>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- jquery 3.7.1 -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>


</head>
<body>
    <jsp:include page="/views/common/menubar.jsp" />
    <header>

        <div class="container">
    
            <div class="profile">
    
                <div class="profile-image">
                    <a href="">
                        <img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="">
                    </a>
                </div>
                
                <div class="profile-user-settings">
                    
                    <h1 class="profile-user-name">userName</h1>
    
                    <button class="btn profile-edit-btn, btn btn-info" id="follow-btn">팔로우 요청</button>
    
                    <button class="btn profile-settings-btn" data-bs-toggle="modal" data-bs-target="#myModal-update"
                    style="position: absolute;
                    right: 10px;
                    padding: 0;
                    margin: 0;
                    border: none;
                    top: -35px;
                    width: 20px;
                    height: 20px;"  aria-label="profile settings"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16"
                    >
                      <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"></path>
                      <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"></path>
                    </svg></button>
                    
                </div>
    
                <div class="profile-stats">
                    <button class="follow-btn" data-bs-toggle="modal" data-bs-target="#myModal-follow">
                        <ul>
                            <li><span class="profile-stat-count">188</span> 팔로워</li>
                            <li><span class="profile-stat-count">206</span> 팔로잉</li>
                        </ul>
                    </button>
                </div>
    
                <div class="profile-bio">
    
                    <p> 상태메세지 공간입니다. </p>
    
                </div>
    
            </div>
            <!-- End of profile section -->
    
        </div>
        <!-- End of container -->
    
    </header>
    
    <main>
    
        <div class="container">
    
            <div class="gallery ">
                <div class="textBox gallery-item">
                        <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                        </svg>
                          <div class="gallery-item-info">
                        </div>
                </div>
                
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1511765224389-37f0e77cf0eb?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1497445462247-4330a224fdb1?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1426604966848-d7adac402bff?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-type">
    
                        <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>
    
                    </div>
    
                    <div class="gallery-item-info">    
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1502630859934-b3b41d18206c?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-type">
    
                        <span class="visually-hidden">Video</span><i class="fas fa-video" aria-hidden="true"></i>
    
                    </div>
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1498471731312-b6d2b8280c61?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-type">
    
                        <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>
    
                    </div>
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1515023115689-589c33041d3c?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1504214208698-ea1916a2195a?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1515814472071-4d632dbc5d4a?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1511407397940-d57f68e81203?w=500&h=500&fit=crop" class="gallery-image" alt="">

                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1518481612222-68bbe828ecd1?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1505058707965-09a4469a87e4?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
                <div class="gallery-item" tabindex="0">
    
                    <img src="https://images.unsplash.com/photo-1423012373122-fff0a5d28cc9?w=500&h=500&fit=crop" class="gallery-image" alt="">
    
                    <div class="gallery-item-info">
                    </div>
    
                </div>
    
            </div>
            <!-- End of gallery -->
    
        </div>
        <!-- End of container -->
    
    </main>
    

<!-- The Modal -->
<div class="modal" id="myModal-update">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
  
            <!-- Modal Header -->
            <div class="modal-header">
            <h5 class="modal-title">마이페이지 편집</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
    
            <!-- Modal body -->
            <div class="modal-body">
            <div class="container mt-3">
                <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action"><h3>프로필사진 변경</h3></a>
                <a href="#" class="list-group-item list-group-item-action"><h3>유저 이름 변경</h3></a>
                <a href="#" class="list-group-item list-group-item-action"><h3>아이디 변경</h3></a>
                <a href="#" class="list-group-item list-group-item-action"><h3>비밀번호 변경</h3></a>
                <a href="#" class="list-group-item list-group-item-action"><h3>상태메세지 변경</h3></a>
                </div>
            </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">뒤로가기</button>
            </div>
          
        </div>
    </div>
</div>
<!-- The Modal -->
<div class="modal" id="myModal-follow">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
    
            <!-- Modal Header -->
            <div class="modal-header">
            <h2 class="modal-title">친구목록</h2>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
    
            <!-- Modal body -->
            <div class="modal-body">
                <div class="container mt-3">           
                    <table class="table table-hover" style="margin-top: -20px;">
                        <thead>
                            <tr>
                            <th style="text-align: center"><h4>프로필</h4></th>
                            <th width="60%"><h4>이름</h4></th>
                            <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </td>
                                <td><h4 style="margin-top: 5px;">g10000_</h4></td>
                                <td><button type="button" class="btn btn-sm btn-primary"><h4 style="margin-top: 2px;">팔로잉</h4></button></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
    
            <!-- Modal footer -->
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">뒤로가기</button>
            </div>
    
        </div>
    </div>
</div>
</body>
</html>