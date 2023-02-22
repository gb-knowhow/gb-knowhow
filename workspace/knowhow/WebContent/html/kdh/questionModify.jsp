<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>질문 수정페이지</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/image/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kdh/questionModify.css"/>
  </head>
  <body>
    <div class="input_help_ask_home_end">
      <header><jsp:include page="${pageContext.request.contextPath}/html/hhs/include/header.jsp" /></header>
      <div class="input_help_content_full">
        <div class="InquiryInput_ask_form">
          <div class="innerFull">
            <div class="EndTopTitle_top_title">
              <div class="EndTopTitle_title_box">
                <h2>
                  <div class="firstTitle">
                    <span class="titleColor">Know-How </span>질문
                  </div>
                </h2>
                <span class="EndTopTitle_bottom"></span>
              </div>
            </div>
            <!-- form action style = display 부분-->
            <form action style="display: block">
              <div>
                <div style="line-height: 1.8">
                  <span
                    style="font-size: 12pt; font-family: 나눔바른고딕, NanumBarunGothic, NanumBarunGothicOTF;">
                    은퇴자 분들에게 궁금하신 부분을 질문해주세요!<br /><br />
                  </span>
                </div>
                <div style="line-height: 1.8">
                  <span style="font-size: 12pt; font-family: 나눔바른고딕, NanumBarunGothic, NanumBarunGothicOTF;">
                    페이지에 문제가 있거나 사이트의 질문이 있으시면 이 게시판이 아닌<br />
                    문의 게시판에 글을 남겨주시면 최대한 신속하게 확인하고 조치해드리겠습니다.
                  </span>
                </div>
              </div>
              <fieldset class="InquiryInput_field_set_downContent">
                <legend class="blind">문의내용 작성</legend>
                <div class="InquiryInput_guide_text" style="color: red;">
                  ※ 작성하신 내용에 욕설, 성희롱 등의 내용이 포함된 경우 관련 법령에 따라 조치될 수
                  있습니다.
                </div>
                <span class="InquiryInput_add_text">필수 입력 사항</span>
                <div class="InquiryInput_field_box">
                  <dl>
                    <dt><em class="blind"></em><label for="mocustomerMemberID">아이디</label></dt>
                    <dd>
                      <div class="InquiryInput_input_box">
                        <span class="InquiryInput_id_text">
                          로그인 한 아이디 나오게 하기
                        </span>
                      </div>
                    </dd>
                  </dl>
                </div>
                <div class="InquiryInput_field_box">
                  <dl>
                    <dt class="InquiryInput_essential">
                      <em class="blind">필수 입력 사항</em>
                      <label for="questionTitle">질문 제목</label>
                    </dt>
                    <dd>
                      <div class="InquiryInput_input_box">
                        <input id="questionTitle"  type="text" class="InquiryInput_input_text check_select" />
                        <div class="arr"></div>
                      </div>
                    </dd>
                  </dl>
                </div>
                <div class="InquiryInput_write_area">
                  <dl>
                    <dt class="InquiryInput_essential">
                      <em class="blind">필수 입력 사항</em>
                      <label for="moText2CA">질문 사항</label>
                    </dt>
                    <dd>
                      <textarea id="moText2CA"  class="textarea" maxlength="1000"></textarea>
                      <div class="err2"></div>
                      <span class="InquiryInput_text_count">
                        <span>0</span>
                        자 입력 / 최대 1000자
                      </span>
                    </dd>
                  </dl>
                </div>
                <div class="InquiryInput_field_box InquiryInput_privacy">
                  <dl>
                    <dt class="InquiryInput_essential">
                      <em class="blind">필수 입력 사항</em>
                      <label for="moindividualInfoYn">개인정보 수집 동의</label>
                    </dt>
                    <dd>
                      <p class="InquiryInput_desc_text">
                        - 수집하는 개인정보 항목: 이메일 주소<br /><br />
                        개인정보는 문의 접수, 고객 불편 사항 확인 및 처리 결과 회신에 이용되며
                        전자상거래법 등 관련 법령에 따라
                        <span style="font-size: 19.2px; color: #2d2d2d">
                          <strong>3년간 보관됩니다.</strong></span><br />
                        이용자는 본 동의를 거부할 수 있으나, 미동의 시 문의 접수가 불가능합니다.
                      </p>
                      <div class="InquiryInput_check_box">
                        <input type="checkbox" id="check_select1" class="input-agree" name="" /><label
                          for="check_select1" class="lab">동의합니다.</label>
                      </div>
                    </dd>
                  </dl>
                </div>
                <div class="CommonBtn_common_btn_wrap">
                  <div class="CommonBtn_common_btn_box">
                    <button type="button" class="CommonBtn_common_btn CommonBtn_on button1">
                      수정하기
                    </button>
                  </div>
                </div>
              </fieldset>
            </form>
          </div>
        </div>
        <footer><jsp:include page="${pageContext.request.contextPath}/html/hhs/include/footer.jsp" /></footer>
        <!-- helpContent-full-div -->
      </div>
    </div>
</body>
<script src="${pageContext.request.contextPath}/js/kdh/questionModify.js"></script>
</html>