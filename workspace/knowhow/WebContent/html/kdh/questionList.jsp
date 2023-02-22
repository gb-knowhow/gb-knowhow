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
    <link rel="shortcut icon" type="image/x-icon" href="/jspTeamProject/image/Favi.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kdh/questionList.css">
  </head>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>질문 목록</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/image/greenV.ico">
    <link rel="stylesheet" href="/Know-How/css/questionList.css">
  </head>

  <body class="body">
    <header><jsp:include page="${pageContext.request.contextPath}/html/hhs/include/header.jsp" /></header>

      <div id="container" class="container-full">
          <div class="container-inner _containerFluidContentInner">
            <ul class="location" id="au_location">
              <!-- after -->
            </ul>

            <div class="tabWrap">
              <ul class="tab1 tab1_box" role="tablist">
                <li role="presentation" class="on">
                  <a href="/qna/kinupList.naver"class="item _nclicks:kls.best"
                    tabindex="-1" aria-selected="" role="tab">
                    Q&amp;A
                  </a>
                </li>
                <!-- after -->
              </ul>
              <!-- "kinqna_wp _kinqna_wp" -->
            </div>
            <div id="list_kinup" class="qna_list_kinup">
              <div class="board_box">
                <h3 class="blind">해결된 질문 게시판</h3>
                <table cellspacing="0" class="boardtype2" width="100%">
                  <caption>
                    <span class="blind">해결된 질문 1페이지 목록</span>
                  </caption>
                  <colgroup>
                    <col />
                    <col width="94" />
                    <col width="69" />
                    <col width="47" />
                    <col width="66" />
                  </colgroup>
                  <thead>
                    <tr>
                      <!-- 정렬 기준 선택할때마다 up/down 클래스 변경 -->
                      <th scope="col" class="title">제목</th>
                      <th scope="col">분야</th>
                      <th scope="col" class="answer">
                          답변
                      </th>
                      <th scope="col" class="on">
                          작성
                          <!-- <취향 껏 img 넣어도 댐> -->
                      </th>
                    </tr>
                  </thead>
                  <tbody id="au_board_list">


                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          글을 쓸 때마다 생성됩니다.
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          글을 쓸 때마다 생성됩니다.
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>


                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          강사님.... 우리 팀장님은요......
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          매번 혼날까봐 손 떨면서 발표해요....
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          옆에서 보는데
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          안쓰럽기도 하고..
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          오늘은 안 혼났을까요?
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          근데 그렇게 혼나도
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          잠을 너무 많이 잡니다
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          아마 좀 더 혼나야 될 듯 싶습니다.
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          정신차리게 좀 더 혼내주세요
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a href="" rel="KIN" class="">
                          - 익명의 누군가가-
                        </a>
                      </td>
                      <td class="field">
                        <a href="" class="">
                          분야
                        </a>
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">YY.MM.DD 13:15</td>
                    </tr>

                  </tbody>
                </table>

                <ww:if test="false"> </ww:if>
                <ww:else> </ww:else>

                <div class="paging-space" style="display: none"></div>
                <div class="paginate _default_pager">

                  <a href="" class="prev ">
                    이전페이지
                  </a>

                  <!-- class="on" title="선택됨" -->
                  <a href="" class="btnNums">
                    1
                  </a>

                  <!-- 11페이지로 href 걸어줘야 한다. -->
                  <a href="" class="next">
                    다음페이지
                  </a>
                </div>

                <div class="search">
                  <form name="bottom_search" id="bottom_search" method="get">
                    <input type="hidden" name="cs" value="utf8" />
                    <fieldset style="padding-left: 35%;">
                      <div class="search_area">
                        <input role="combobox" type="text" name="query" class="search_input" onclick="" accesskey="s" title="검색어 입력" maxlength="255" autocomplete="off" id="nx_query" value="" style="outline: none;">
                        <div class="auto_complete_box on _autoCompleteArea"></div>
                        <a href="#" onclick="" class="search_btn"><span class="sp_gnb icon_search">지식iN 검색</span></a>
                      </div>
                    </fieldset>
                  </form>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <!-- <div id="wrap" class="wrap wrap_qna">의 div닫음 -->
    <footer><jsp:include page="${pageContext.request.contextPath}/html/hhs/include/footer.jsp" /></footer>
  </body>
  <script src="../js/questionList.js"></script>
</html>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/kdh/questionList.js"></script>
</html>