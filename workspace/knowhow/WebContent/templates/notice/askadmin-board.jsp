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
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/image/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/notice/askadmin-board.css" />
</head>
<header id="header"><jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" /></header>
<body>
	<div class="stats_ranking_area" id="statsRankingArea">
	    <div class="section_headings section_headings__step1">
	    	<h1 class="section_headings_title">문의 게시판 ${total}</h1>
	        <a class="askAdminBtn" href="${pageContext.request.contextPath}/askAdmin/askAdminWrite.askAdmin?page=${page}">문의하기</a>
	    </div>
        	<div class="ranking_section">
	        	<div class="ranking_list_area" id="rankingChart">
	              	<section id = "content-wrap">
		            	<ul class="ranking_list">
		            		<c:forEach var="askAdminList" items="${askAdminLists}">
								<li class="ranking_item _item_1">
								    <a href="javascript:location.href='${contextPath}/askAdmin/askAdminDetailAction.askAdmin?askAdminId=${askAdminList.askAdminId}'">
									    <div class="ranking_title_wrap">
	                      				<span class="no">${askAdminList.askAdminId}</span>
					                      <a href="javascript:location.href='${contextPath}/askAdmin/askAdminDetailAction.askAdmin?askAdminId=${askAdminList.askAdminId}'" class="ranking_title">${askAdminList.askAdminTitle}</a>
	                  					</div>
									    <a
									      href="javascript:location.href='${contextPath}/askAdmin/askAdminDetailAction.askAdmin?askAdminId=${askAdminList.askAdminId}'"
									      class="text"
									      >${askAdminList.askAdminContent}</a>
								    </a>
								</li>
							</c:forEach>
	                  	</ul>
	                </section>
	            </div>
	              <!-- //랭킹 -->
	              <!-- 페이징 -->
	                <div class="paginate" id="rankingPaging">
	                	<c:if test = "${prev}">
	                		<a href="javascript:location.href='/askAdmin/askAdminListAction.askAdmin?page=${startPage - 1}'" class="paging paging-move"><img class="paging-move-icon" src="${pageContext.request.contextPath}/css/kjp/lt.png"> </a>
	               		</c:if>
	               		<c:forEach var="i" begin="${startPage}" end="${endPage}">
	               			<c:choose>
	               				<c:when test="${i eq page}">
						             <a
						               href="javascript:void(0)"
						               class="on"
						               onclick="nhn.Kin.Utility.nClicks('hrk.page', '', '', event);"
						               ><c:out value="${i}"/></a>
	               				</c:when>
	               				<c:otherwise>
				                	<a href="javascript:location.href='/askAdmin/askAdminListAction.askAdmin?page=${i}'" onclick="nhn.Kin.Utility.nClicks('hrk.page', '', '', event);"><c:out value="${i}"/></a>
	               				</c:otherwise>
	               			</c:choose>
						</c:forEach> 
						<c:if test = "${next}">
	                		<a href="javascript:location.href='/askAdmin/askAdminListAction.askAdmin?page=${endPage + 1}'" class="paging paging-move"><img class="paging-move-icon" src="${pageContext.request.contextPath}/css/kjp/gt.png"> </a>
	              		</c:if>
	              	</div>
            </div>
            
       <footer><jsp:include page="${pageContext.request.contextPath}/templates/main/include/footer.jsp" /></footer>
   </body>
</html>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/notice/questionList.js"></script>
</html>