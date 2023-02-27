<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>질문 목록</title>
    <!-- Favicon -->
   <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/image/favicon.ico">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kjp/askadmin-board.css" />
</head>
</head>
       <header id="header"><jsp:include page="${pageContext.request.contextPath}/html/hhs/include/header.jsp" /></header>
   <body>
                      <!-- 좋아요 많은 답글 -->
          <div class="stats_ranking_area" id="statsRankingArea">
            <!-- 좋아요 많은 답글 헤딩 -->
            <div class="section_headings section_headings__step1">
              <h1 class="section_headings_title">문의 목록</h1>
              <div class="side _ranking_base_date" id="rankingDate">20일 06시 기준</div>
              <div class="date_base_sort" id="latest">최신순</div>
            </div>
            <!-- //좋아요 많은 답글 헤딩 -->
            <!-- // 좋아요 많은 답글 본문 -->
            <div class="ranking_section">
              <!-- 랭킹 -->
              <div class="ranking_list_area" id="rankingChart">
                <ul class="ranking_list">
                  <!-- 랭킹 아이템 한개 div -->
                  <!-- 백단에서 정보를 가지고 와서 js로 a태그에 링크 삽입 해 주어야함. -->
                   <li class="ranking_item _item_1">
                    <span class="no">1</span>
                    <a
                      href="/qna/detail.naver?d1id=3&amp;dirId=31505&amp;docId=369817730"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >test1</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=3&amp;dirId=31505&amp;docId=369817730"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >내용</a
                    >
                  </li>

                </ul>
              </div>
              <!-- //랭킹 -->
              <!-- 페이징 -->
              <div class="paginate" id="rankingPaging">
                <a
                  href="#"
                  class="on"
                  title="선택됨"
                  onclick="nhn.Kin.Utility.nClicks('hrk.page', '', '', event);"
                  >1</a
                >

                <a href="#" onclick="nhn.Kin.Utility.nClicks('hrk.page', '', '', event);">2</a>
              </div>
            </div>
            <!-- // 좋아요 많은 답글 본문 -->
          </div>
          <!-- // 좋아요 많은 답글 -->
            
       <footer><jsp:include page="${pageContext.request.contextPath}/html/hhs/include/footer.jsp" /></footer>
   </body>
</html>s
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/kdh/questionList.js"></script>
</html>