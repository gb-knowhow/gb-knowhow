<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
       <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/notice/inquiry-detail.css"/>
    </head>
    <body>
        <main>
            <!-- 게시글 -->
            <section class="post_area">
                <!-- 사이드 -->
                <div class="post_side_area">
                    <!-- 뒤로 가기 -->
                    <div class="side_left_area">
                        <a class="back_button">
                            <div class="back_img"></div>
                        </a>
                    </div>
                    <!-- 가운데 비워두기 -->
                    <div class="side_middle_area"></div>
                    <!-- 좋아요 -->
                    <div class="side_right_area" style="">
                        <div class="like_box">
                            <button class="like_button" style="display: none;">
                                <div class="heart_img"></div>
                                <div class="like_count">15</div>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- 컨텐츠 -->
                <div class="post_content_area">
                    <div class="post_container">
                        <div class="post_header">
                            <div class="post_title">문의사항</div>
                            <div class="post_info">
                                <span class="post_writer">관리자</span>
                                <span class="post_dot">·</span>
                                <span class="post_date">2023.1.18(공지올린날짜 !)</span>
                            </div>
                        </div>
                        <div class="post_body">
                            <div class="post_content">
                                <div class="content_text">
                                    문의사항 내용 디테일 들어올곳.
                                </div>
                            </div>
                            <div class="post_category">
                                <a class="category_box" href="">
                                    <p class="category_text">긴급공지</p>
                                    <p class="move_to_lecture">
										                                        
                                    </p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- 댓글 달기 -->
        </main>
    </body>
</html>
