<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>banner-retry</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/hhs/main/main_banner.css">
  </head>
  <body>
    <section class="container">
      <!-- 메인 배너 -->
      <div class="banner">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
      </div>

      <div class="move-arrow">
        <!-- 이전 버튼 -->
        <div class="prev"></div>
        <!-- 다음 버튼 -->
        <div class="next"></div>
      </div>
    </section>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/hhs/main/main_banner.js"></script>
</html>
