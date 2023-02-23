<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>know-how</title>
<link rel="shortcut icon" type="image/x-icon" href="./images/logo-favicon.ico" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lut/banner-manager.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body> 
    <div class="wrap">
        <div id="menu-side" class="container">
            <div id="top-box" class="menu-box">
                <img id="knowhow-logo" alt="know-how" src="./images/know-how-title.png">
            </div>
            <div id="middle-box" class="menu-box">
                <div id="wrap-middle-box">
                    <div id="middle-box-contents">
                        <div class="side-top-margin"></div>
                        <span class="mouseOnEffect">
                            <div id="middle-box-site-shortcut-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="home" src="./images/home-icon.png">
                                </div>
                                사이트 바로가기
                            </div>
                        </span>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="dash-board" src="./images/dashBoard-icon.png">
                                </div>
                                대시보드
                            </div>
                        </span>
                    
                        <button type="button" class="collapsible" onclick="collapse(this);">
                            <div class="icon-gap">
                                <img class="side-icons" alt="user" src="./images/user-icon.png">
                            </div>
                            회원관리
                        </button>
                        <div class="content">
                            <p>멘토 목록</p>
                            <p>멘티 목록</p>
                        </div>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="resume" src="./images/resume.png">
                                </div>
                                이력서 관리
                            </div>
                        </span>

                        <button type="button" class="collapsible" onclick="collapse(this);">
                            <div class="icon-gap">
                                <img class="side-icons" alt="ask-answer" src="./images/ask-answer-icon2.png">
                            </div>
                            질문 답변 관리
                        </button>
                        <div class="content">
                            <p>멘티 질문글 목록</p>
                            <p>- 질문글 댓글 목록</p>
                            <p>멘토 답변글 목록</p>
                            <p>- 답변글 댓글 목록</p>
                        </div>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="resume" src="./images/ask-board-icon.png">
                                </div>
                                문의 게시판 관리
                            </div>
                        </span>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="resume" src="./images/banner-icon.png">
                                </div>
                                배너 관리
                            </div>
                        </span>
                        
                    </div>
                </div>
            </div>
        </div>
               
        <div id="right-side" class="container">
            <div class="right-header">
                <div class="letter-space">
                배너 관리 
                </div>
                <h1 id="clock" style="color:black;">clock</h1>
                <img  class="admin-profile" src="https://whatsondisneyplus.com/wp-content/uploads/2021/09/bart-.png"> 
                <p class="admin-name">관리자</p>
                <p class="name-logout-space">ㅣ</p>
                <button class="admin-logout" type="submit" value="">LOGOUT</button>
            </div>
            <div class="right-body">
                <div class="user-list-letter">
                    <p>배너 목록</p>
                </div>

                <div class="watch-all-ask">
                    <input class="add integrated-for-margin" type="submit" value="배너추가">
                </div>
                <div class="right-contents-wrap">

                    <div class="right-contents margin-off">
                        <p class="banner-num">배너1</p>
                        <div class="status-stop status">사용중단</div>
                        <div class="status-use status">사용중</div>
                        <div class="slide-button">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div>
                        <div class="detail">
                            <button class="detail-button modal7" type="submit">
                                <img class="detail-icon" src="./images/detail-icon.png">
                            </button>
                        </div>
                        <div id="my_modal7" class="my_modal" >
                            <a class="modal_close_btn">✖</a>
                            <div class="comment-writer">배너명: 합격면접</div>
                            <div class="comment-title">코드: {{$메인배너1}}</div>
                            <div class="container">
                                <div class="image-upload" id="image-upload">
                        
                                    <div class="image-show" id="image-show"></div>
                                    <form method="post" enctype="multipart/form-data">
                                        <input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
                                    </form>
                                    
                                    <div class="fileContainer">
                                        <div class="button">
                                            <label for="chooseFile">
                                            </label>
                                        </div>
                                        <div class="fileInput">
                                            <p>FILE NAME: </p>
                                            <p id="fileName"></p>
                                        </div>
                                        <div class="buttonContainer">
                                            <div class="submitButton" id="submitButton">업로드</div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="qna-manage">
                                <input class="qna-submit-btn" type="submit" value="수정하기">
                                <input class="qna-submit-btn" type="submit" value="삭제하기">
                            </div>
                        </div>
                        <img  class="banner" src="./images/banner1.png">
                    </div>

                    <div class="right-contents">
                        <p class="banner-num">배너2</p>
                        <div class="status-stop status">사용중단</div>
                        <div class="status-use status">사용중</div>
                        <div class="slide-button">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div> 
                        <div class="detail">
                            <button class="detail-button" type="submit">
                                <img class="detail-icon" src="./images/detail-icon.png">
                            </button>
                        </div>
                        <img  class="banner" src="./images/banner2.png">
                    </div>
                    <div class="right-contents">
                        <p class="banner-num">배너3</p>
                        <div class="status-stop status">사용중단</div>
                        <div class="status-use status">사용중</div>
                        <div class="slide-button">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div> 
                        <div class="detail">
                            <button class="detail-button" type="submit">
                                <img class="detail-icon" src="./images/detail-icon.png">
                            </button>
                        </div>
                        <img  class="banner" src="./images/banner3.png">
                         
                    </div>
                    <div class="right-contents">
                        <p class="banner-num">배너4</p>
                        <div class="status-stop status">사용중단</div>
                        <div class="status-use status">사용중</div>
                        <div class="slide-button">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div> 
                        <div class="detail">
                            <button class="detail-button" type="submit">
                                <img class="detail-icon" src="./images/detail-icon.png">
                            </button>
                        </div>
                        <img  class="banner" src="./images/banner4.png">
                    </div>
                    <div class="right-contents margin-off">
                        <p class="banner-num">배너5</p>
                        <div class="status-stop status">사용중단</div>
                        <div class="status-use status">사용중</div>
                        <div class="slide-button">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div> 
                        <div class="detail">
                            <button class="detail-button" type="submit">
                                <img class="detail-icon" src="./images/detail-icon.png">
                            </button>
                        </div>
                        <img  class="banner" src="./images/banner5.png">
                    </div>
                    <div class="right-contents">
                        <p class="banner-num">배너6</p>
                        <div class="status-stop status">사용중단</div>
                        <div class="status-use status">사용중</div>
                        <div class="slide-button">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div> 
                        <div class="detail">
                            <button class="detail-button" type="submit">
                                <img class="detail-icon" src="./images/detail-icon.png">
                            </button>
                        </div>
                        <img  class="banner" src="./images/banner6.png">
                    </div>
                    <div class="right-contents">
                        <p class="banner-num">배너7</p>
                        <div class="status-stop status">사용중단</div>
                        <div class="status-use status">사용중</div>
                        <div class="slide-button">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div> 
                        <div class="detail">
                            <button class="detail-button" type="submit">
                                <img class="detail-icon" src="./images/detail-icon.png">
                            </button>
                        </div>
                        <img  class="banner" src="./images/banner7.png">
                    </div>
                    <div class="right-contents">
                        <p class="banner-num">배너8</p>
                        <div class="status-stop status">사용중단</div>
                        <div class="status-use status">사용중</div>
                        <div class="slide-button">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </div>   
                        <div class="detail">
                            <button class="detail-button" type="submit">
                                <img class="detail-icon" src="./images/detail-icon.png">
                            </button>
                        </div>
                        <img  class="banner" src="./images/banner8.png">
                    </div>
                    
                </div>
                <div class="page-button-box">
                    <input class="page-button" type="submit" value="1">
                    <input class="page-button2" type="submit" value="2">
                </div>
            </div>
        </div>        
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/lut/know-how.js"></script>
</html>