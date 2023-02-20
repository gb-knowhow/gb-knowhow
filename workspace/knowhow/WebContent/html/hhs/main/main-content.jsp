<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>main1</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/hhs/main/main-content.css" />
  </head>
  <body>
    <div id="container-main" class="container-fluid" role="main">
      <div class="container-fluid-content-inner _containerFluidContentInner">
        <div class="section_qna">
          <!-- 좋아요 많은 답글 -->
          <div class="stats_ranking_area" id="statsRankingArea">
            <!-- 좋아요 많은 답글 헤딩 -->
            <div class="section_headings section_headings__step1">
              <h1 class="section_headings_title">좋아요 많은 답글</h1>
              <div class="side _ranking_base_date" id="rankingDate">20일 06시 기준</div>
            </div>
            <!-- //좋아요 많은 답글 헤딩 -->
            <!-- // 좋아요 많은 답글 본문 -->
            <div class="ranking_section">
              <!-- 랭킹 -->
              <div class="ranking_list_area" id="rankingChart">
                <ul class="ranking_list">
                  <li class="ranking_item _item_1">
                    <span class="no">1</span>
                    <a
                      href="/qna/detail.naver?d1id=3&amp;dirId=31505&amp;docId=369817730"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >이가 빠지는 꿈&amp;예지몽</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=3&amp;dirId=31505&amp;docId=369817730"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >1.이가 빠지는 꿈 해몽 부탁드려요... 중2 학생입니다. 제가 엊그저께 이가 빠시는
                      꿈을 꿨어요. 제가 전...</a
                    >
                    <span class="recommend_num">좋아요 44</span
                    ><span class="reply_num">답변수 1</span>
                  </li>

                  <li class="ranking_item _item_2">
                    <span class="no">2</span>
                    <a
                      href="/qna/detail.naver?d1id=3&amp;dirId=31402&amp;docId=439814874"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >임영웅 사진 찿아주세요</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=3&amp;dirId=31402&amp;docId=439814874"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >임영웅 사진으로 앨범 제작하려합니다 워낙 잘 생겨서 어느 사진이나 다 이뿌고
                      멋져서 폰에 저장을 했었는...</a
                    >
                    <span class="recommend_num">좋아요 44</span
                    ><span class="reply_num">답변수 12</span>
                  </li>

                  <li class="ranking_item _item_3">
                    <span class="no">3</span>
                    <a
                      href="/qna/detail.naver?d1id=11&amp;dirId=11080501&amp;docId=348216660"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >중국 숫자 암호..?</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=11&amp;dirId=11080501&amp;docId=348216660"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >중국 숫자 암호 중에 혹시 날 사랑해줘라던지 날 생각해줘 뭐 대충 이런 암호
                      있나요? 있으면 알려주세요!</a
                    >
                    <span class="recommend_num">좋아요 38</span
                    ><span class="reply_num">답변수 1</span>
                  </li>

                  <li class="ranking_item _item_7" style="display: none">
                    <span class="no">7</span>
                    <a
                      href="/qna/detail.naver?d1id=1&amp;dirId=1060305&amp;docId=399654874"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >제출한 구글폼 확인</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=1&amp;dirId=1060305&amp;docId=399654874"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >구글 폼 제출하고 나서 제출한 거 다시 볼 수 있나요?</a
                    >
                    <span class="recommend_num">좋아요 25</span
                    ><span class="reply_num">답변수 2</span>
                  </li>

                  <li class="ranking_item _item_8" style="display: none">
                    <span class="no">8</span>
                    <a
                      href="/qna/detail.naver?d1id=8&amp;dirId=8040103&amp;docId=439900242"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >검정 롱코트</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=8&amp;dirId=8040103&amp;docId=439900242"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >격식있는 자리에 가야하는데 외투는 검정 롱코트로 정했는데 안에 뭘 입어야 할 지
                      모르겠어요ㅠㅠ 아직 학...</a
                    >
                    <span class="recommend_num">좋아요 23</span
                    ><span class="reply_num">답변수 1</span>
                  </li>

                  <li class="ranking_item _item_9" style="display: none">
                    <span class="no">9</span>
                    <a
                      href="/qna/detail.naver?d1id=3&amp;dirId=3031001&amp;docId=349200363"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >애교대사&amp;멘트</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=3&amp;dirId=3031001&amp;docId=349200363"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >해줘해줘,슈크림빵,애라애교등등 대사 알려주세요 최대한 많이요!!!</a
                    >
                    <span class="recommend_num">좋아요 22</span
                    ><span class="reply_num">답변수 1</span>
                  </li>
                </ul>

                <ul class="ranking_list">
                  <li class="ranking_item _item_4">
                    <span class="no">4</span>
                    <a
                      href="/qna/detail.naver?d1id=11&amp;dirId=111301&amp;docId=310914081"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >(중딩)리만가설이 무엇인가요?? 말</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=11&amp;dirId=111301&amp;docId=310914081"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >(중딩)리만가설이 무엇인가요?? 말 그자체로 소수인가요??? 모르겠어요ㅠㅠ..</a
                    >
                    <span class="recommend_num">좋아요 37</span
                    ><span class="reply_num">답변수 3</span>
                  </li>

                  <li class="ranking_item _item_5">
                    <span class="no">5</span>
                    <a
                      href="/qna/detail.naver?d1id=8&amp;dirId=80507&amp;docId=28705162"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >이 새의종류가무엇인가요???</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=8&amp;dirId=80507&amp;docId=28705162"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >오늘 제 동생이놀이터에서놀다가 새끼새는 찾았는데 이새의
                      종류가무엇인지몰르겟어효 ㅜㅜ좀 가르쳐주세요...</a
                    >
                    <span class="recommend_num">좋아요 30</span
                    ><span class="reply_num">답변수 3</span>
                  </li>

                  <li class="ranking_item _item_6">
                    <span class="no">6</span>
                    <a
                      href="/qna/detail.naver?d1id=9&amp;dirId=90203&amp;docId=439878617"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >프랑스 스위스 이탈리아 3개국 11박 13일 일정 도와주세요</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=9&amp;dirId=90203&amp;docId=439878617"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >안녕하세요 5월 17일~29일 총 11박 13일 프랑스 스위스 이탈리아 3개국
                      여행일정이에요 첫 해외여행이 유럽...</a
                    >
                    <span class="recommend_num">좋아요 28</span
                    ><span class="reply_num">답변수 1</span>
                  </li>

                  <li class="ranking_item _item_10" style="display: none">
                    <span class="no">10</span>
                    <a
                      href="/qna/detail.naver?d1id=6&amp;dirId=6010101&amp;docId=439893434"
                      class="ranking_title"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >여권 재발급 기간</a
                    >
                    <a
                      href="/qna/detail.naver?d1id=6&amp;dirId=6010101&amp;docId=439893434"
                      class="text"
                      target="_blank"
                      onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);"
                      >15일 저녁에 신청했고 17일에 발급처리된것까지 확인했습니다 그럼 28일 전까지는
                      받을수있겠죠?? 1일에 출...</a
                    >
                    <span class="recommend_num">좋아요 20</span
                    ><span class="reply_num">답변수 2</span>
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
          <script type="text/javascript">
            $Fn(function () {
              if (naver.kin.main.StatRanking !== undefined) {
                var oStatRanking = new naver.kin.main.StatRanking();
              }
            }, this).attach(window, 'load');
          </script>
          <!-- 페이징 -->

          <!-- 답변을 기다리는 질문 -->
          <div class="stats_ranking_area">
            <!-- 섹션 헤딩 -->
            <div class="section_headings section_headings__step1">
              <h1 class="section_headings_title">답변을 기다리는 질문</h1>
              <div class="side _ranking_base_date" id="rankingDate">20일 06시 기준</div>
            </div>
            <!-- //섹션 헤딩 -->
            <!-- 답변을 기다리는 질문 본문 -->
                <div class="question_wrap">
                    <!-- 카테고리 -->
                    <div class="category_area">
                        <!-- class 가 on 일 때 선택되어 있음 -->
                        <ul class="category_list">
                            <li dirid="0" class="on">
                                <a href="#" onclick="">전체</a>
                            </li>
                            <li dirid="1">
                                <a href="#" onclick="">법무/세무</a>
                            </li>
                            <li dirid="2">
                                <a href="#" onclick="">운세/타로</a>
                            </li>
                            <li dirid="3">
                                <a href="#" onclick="">심리/건강</a>
                            </li>
                            <li dirid="4">
                                <a href="#" onclick="">IT/디자인</a>
                            </li>
                            <li dirid="5">
                                <a href="#" onclick="">학습/진로</a>
                            </li>
                            <li dirid="6">
                                <a href="#" onclick="">어학/번역</a>
                            </li>
                            <li dirid="7">
                                <a href="#" onclick="">재테크/금융</a>
                            </li>
                            <li dirid="8">
                                <a href="#" onclick="">비즈니스</a>
                            </li>
                            <li dirid="9">
                                <a href="#" onclick="">라이프</a>
                            </li>
                            <li dirid="10">
                                <a href="#" onclick="">취미/스포츠</a>
                            </li>
                            <li dirid="11">
                                <a href="#" onclick="">자기계발</a>
                            </li>
                            <li dirid="12">
                                <a href="#" onclick="">창업/부업</a>
                            </li>
                        </ul>
                    </div>
                    <!-- 카테고리 -->
                    <span class="border"></span>
                    <!-- 질문목록 -->
                    <div class="content_area">
                        <!-- 분야 제목 -->
                        <div class="heading_area">
                            <h2 class="heading_title">
                                <strong>전체</strong>
                            </h2>
                            <!-- 해당 분야내 검색창 -->
                            <div class="search_area" onclick="">
                                <input type="text" class="search_input" title="검색어 입력">
                                <a href="#" class="search_icon"></a>
                            </div>
                            <!-- //해당 분야내 검색창 -->
                        </div>
                        <!-- // 분야 제목 -->
                        <!-- 질문 목록 본문-->
                        <div class="content_wrap">
                            <div class="question_box first"></div>
                            <div class="question_box"></div>
                            <div class="question_box"></div>
                            <div class="question_box"></div>
                            <div class="question_box"></div>
                            <div class="question_box"></div>
                            <div class="question_box"></div>
                            <div class="question_box"></div>
                            <div class="question_box "></div>
                            <div class="question_box last"></div>
                        </div>
                        <!-- // 질문 목록 본문-->
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
                        <!-- // 페이징 -->
                    </div>
                    <!-- 질문목록 -->
                </div>
            <!-- //답변을 기다리는 질문 본문 -->
          </div>
          <!-- // 답변을 기다리는 질문 -->
        </div>
      </div>
    </div>
  </body>
</html>
