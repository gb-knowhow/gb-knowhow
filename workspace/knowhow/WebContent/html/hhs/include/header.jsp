<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>header</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/hhs/include/header_footer.css" />
  </head>
  <body>
    <div class="container">
      <div class="outer_wrapper">
        <div>
          <div class="header_wrapper">
            <div class="header_inner">
              <div class="headerLogo_wrapper">
                <a href="#" class="linkNaver">
                  <span class="blind">know-how</span>
                </a>
                <!-- ::after -->
              </div>
              <div class="searchSection_wrapper">
                <div class="searchSection_inner">
                  <i class="iconSearch">
                    <!-- ::before -->
                    <span class="blind">검색</span>
                    <!-- ::before -->
                  </i>
                  <input type="text" class="searchInput" />
                  <!-- ::after -->
                </div>
              </div>
              <div class="buttonRight_wrapper">
                <div class="buttonWrap headerButton shearchButton">
                  <button class="listButton searchListButton">
                    <div class="icon_wrapper">
                      <span class="blind">검색</span>
                      <svg
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 3a9 9 0 0 1 7.405 14.117l4.308 3.51a1 1 0 0 1-1.161 1.624l-.102-.073-4.36-3.552A9 9 0 1 1 9 3Zm0 2a7 7 0 1 0 0 14A7 7 0 0 0 9 5Z"
                          fill="#000"
                          fill-rule="nonzero"
                        ></path>
                      </svg>
                    </div>
                  </button>
                </div>
                <!-- <div class="buttonWrap headerButton"> 
                  <button class="listButton">
                    <div class="icon_wrapper">
                      <span class="blind">대화목록 및 대기실</span>
                      <i class="iconActive">
                        <span class="blind">미확인 메세지</span>
                      </i>
                      <svg
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          fill-rule="evenodd"
                          clip-rule="evenodd"
                          d="M10.293 22.707a1 1 0 0 1 0-1.414l3-3A1 1 0 0 1 14 18h1a4 4 0 0 0 4-4V8c0-2.21-1.789-4-3.997-4H7.999A3.999 3.999 0 0 0 4 8v6a4 4 0 0 0 4 4h1a1 1 0 1 1 0 2H8a6 6 0 0 1-6-6V8a6 6 0 0 1 5.999-6h7.004A5.998 5.998 0 0 1 21 8v6a6 6 0 0 1-6 6h-.586l-2.707 2.707a1 1 0 0 1-1.414 0zM10 13a1 1 0 0 1 1-1h4a1 1 0 1 1 0 2h-4a1 1 0 0 1-1-1zm1-5a1 1 0 1 0 0 2h4a1 1 0 1 0 0-2h-4zM7 9a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm1 3a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"
                          fill="#000"
                        ></path>
                        <path
                          d="M10.293 22.707a1 1 0 0 1 0-1.414l3-3A1 1 0 0 1 14 18h1a4 4 0 0 0 4-4V8c0-2.21-1.789-4-3.997-4H7.999A3.999 3.999 0 0 0 4 8v6a4 4 0 0 0 4 4h1a1 1 0 1 1 0 2H8a6 6 0 0 1-6-6V8a6 6 0 0 1 5.999-6h7.004A5.998 5.998 0 0 1 21 8v6a6 6 0 0 1-6 6h-.586l-2.707 2.707a1 1 0 0 1-1.414 0z"
                          fill="#000"
                        ></path>
                        <path
                          d="M10 13a1 1 0 0 1 1-1h4a1 1 0 1 1 0 2h-4a1 1 0 0 1-1-1zm1-5a1 1 0 1 0 0 2h4a1 1 0 1 0 0-2h-4zM7 9a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm1 3a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"
                          fill="#000"
                        ></path>
                      </svg>
                    </div>
                  </button>
                </div>-->
                <div class="buttonWrap headerButton">
                  <button class="listButton categoryListButton">
                    <div class="icon_wrapper">
                      <span class="blind">카테고리</span>
                      <svg
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <g fill="none" fill-rule="evenodd">
                          <path
                            d="M13 17a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2h8Zm6-6a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2h14Zm0-6a1 1 0 0 1 0 2H5a1 1 0 1 1 0-2h14Z"
                            fill="#000"
                          ></path>
                          <rect fill="#4A65F6" x="16" y="16" width="4" height="4" rx="2"></rect>
                        </g>
                      </svg>
                    </div>
                  </button>
                  <!-- section for dropdown -->
                  <section class="dropdownSection">
                    <div>
                      <div class="categoryLayerWrap">
                          <div class="categoryLayer">
                              <div class="mainCategoryArea">
                                  <div class="categoryButtonWrap" role="button" aria-pressed="flase">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_1_200716.png);">
                                          </i>법무/세무
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_13_210208.png);">
                                          </i>운세/타로
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_12_200716.png);">
                                          </i>심리/건강
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_5.png);">
                                          </i>IT/디자인
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_4.png);">
                                          </i>학습/진로
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_17_210208.png);">
                                          </i>어학/번역
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_14_221121.png);">
                                          </i>재테크/금융
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_2.png);">
                                          </i>비즈니스
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_3.png);">
                                          </i>라이프
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_19.png);">
                                          </i>취미/스포츠
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/09renewal/promotion/mobile/expert_category_1020201130121620.png?ver=20201130121621);">
                                          </i>자기계발
                                      </button>
                                  </div>
                                  <div class="categoryButtonWrap" role="button" aria-pressed="false">
                                      <button type="button" class="categoryButton">
                                          <i class="iconCategory" style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/introduction/iconCategory_18_221121.png);">
                                          </i>창업/부업
                                      </button>
                                  </div>
                              </div>
                          </div>
                      </div> 
                  </div>
                  </section>
                  <!-- //section for dropdown -->
                  <section class="search_dropdown_Section">
                  <div class="search_dropdown">
                    <div class="search_wrapper">
                      <div class="search_inner">
                        <i class="iconSearch_mini">
                          <!-- ::before -->
                          <span class="blind">검색</span>
                          <!-- ::before -->
                        </i>
                        <input type="text" class="searchInput_mini" />
                        <!-- ::after -->
                      </div>
                    </div>
                  </div>
                  </section>
                  <!-- //section for search dropdown -->
                </div>
                <div class="buttonWrap headerButton">
                  <button class="listButton ">
                    <div class="icon_wrapper">
                      <div
                        class="userThumbnail"
                        style="
                          background-image: url('https://ssl.pstatic.net/static/kin/09renewal/avatar/360x360_m/3_3d.png');
                        "
                      >
                        <span class="blind">사용자 프로필 이미지</span>
                        <!-- ::after -->
                      </div>
                    </div>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <span class="blind">사용자 프로필 이미지</span>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/hhs/include/header.js"></script>
</html>
