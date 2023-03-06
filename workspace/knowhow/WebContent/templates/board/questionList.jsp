<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>질문 목록</title>
    <!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/image/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/questionList.css" />
</head>
	<body>
    	<jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" flush="true"/> 
				             <!-- 좋아요 많은 답글 -->
          <div class="stats_ranking_area" id="statsRankingArea">
            <!-- 좋아요 많은 답글 헤딩 -->
            <div class="section_headings section_headings__step1">
              <h1 class="section_headings_title">질문 목록</h1>
              <!-- <div class="side _ranking_base_date" id="rankingDate">20일 06시 기준</div>
              <div class="date_base_sort" id="latest">최신순</div>
              <div class="ranking_base_sort" id="popular">최신순</div> -->
            </div>
            <!-- //좋아요 많은 답글 헤딩 -->
            <!-- // 좋아요 많은 답글 본문 -->
            <div class="ranking_section">
              <!-- 랭킹 -->
              <div class="ranking_list_area" id="rankingChart">
                <ul class="ranking_list" id="ranking_list">
                	<c:forEach var="question" items="${questions}">
	                	<li class="ranking_item _item_1">
			        	    <span class="no" style="display: none;">${question.questionId}</span>
			            	<a href="javascript:location.href='${pageContext.request.contextPath}/questionDetailAction.question?questionId=${question.questionId}'" class="ranking_title"><c:out value="${question.questionTitle}"/></a>
			                <a href="javascript:void(0)" class="text">${question.questionContent}</a>                    
			                <a href="javascript:void(0)" class="text1">${question.questionRegDate}</a>                    
						</li>
					</c:forEach>
                </ul>
              </div>
              <!-- //랭킹 -->
              <!-- 페이징 -->
              
              <section id="content-wrap">
                <ul></ul>
                <div id="paging-wrap">
                	<c:if test="${prev}">
	                    <a href="javascript:location.href='/questionListAction.question?page=${startPage - 1}'" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/images/prev.png" width="15px"></a>
                	</c:if>
                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
                    	<c:choose>
                    		<c:when test="${i eq page}">
			                    <a href="javascript:void(0)" class="paging paging-checked"><c:out value="${i}"/></a>
                    		</c:when>
                    		<c:otherwise>
			                    <a href="javascript:location.href='/questionListAction.question?page=${i}'" class="paging"><c:out value="${i}"/></a>
                    		</c:otherwise>
                    	</c:choose>
                    </c:forEach>
                    <c:if test="${next}">
                    	<a href="javascript:location.href='/questionListAction.question?page=${endPage + 1}'" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/images/next.png" width="15px"></a>
                    </c:if>
                    <div></div>
                </div>
            </section>
              
              
              <!-- <div class="paginate" id="rankingPaging">
                <a href="#" class="on" title="선택됨">1</a>
                <a href="#">2</a>
              </div> -->
            </div>
            <!-- // 좋아요 많은 답글 본문 -->
          </div>
          <!-- // 좋아요 많은 답글 -->
      		
      <jsp:include page="${pageContext.request.contextPath}/templates/main/include/footer.jsp" flush="true"/> 
	</body>
</html>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/board/questionList.js"></script>
</html>