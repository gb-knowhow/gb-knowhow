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
    <link rel="shortcut icon" type="image/x-icon" href="/image/logo.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kdh/questionList.css"/>
  </head>

  <body class="body">
    <header></header>
    <div id="wrap" class="wrap wrap_qna">
      <!-- <div class="header_wrap"> -->
      <!-- <div class="header_gnb"> </div> -->
      <div class="nav" role="navigation">
        <div class="nav_inner">
          <ul class="nav_list" id="au_lnb" role="menubar">
            <li class="menu" role="presentation">
              <a
                href="/index.naver"
                role="menuitem"
                class="item"
                id="au_lnb_home"
                tabindex="0"
                onclick="nhn.Kin.Utility.nClicks('LNB.home', '', '', event);"
              >
                <em>홈</em>
              </a>
            </li>
            <li class="menu" role="presentation">
              <a
                href="/qna/questionList.naver"
                role="menuitem"
                class="item"
                tabindex="-1"
                onclick="nhn.Kin.Utility.nClicks('LNB.answer', '', '', event);"
              >
                <em>이용방법 및 유의사항</em>
              </a>
            </li>
            <li class="menu" role="presentation">
              <a
                href="/volunteer/index.naver"
                role="menuitem"
                class="item"
                tabindex="-1"
                onclick="nhn.Kin.Utility.nClicks('LNB.donation', '', '', event);"
              >
                <em>문의 게시판</em>
              </a>
            </li>
          </ul>
          <a
            href="#"
            class="nav__button_question _clickcode:LNB.q"
            onclick="nhn.Kin.checkRosAndGoUrl(event, '/qna/question.naver', '');"
            role="button"
          >
            <span class="btn_inner"> <i class="sp_gnb icon_pencil"></i>질문하기</span></a
          >
        </div>
      </div>
      <script type="text/javascript">
        $Fn(function () {
          new naver.kin.LNB({
            questionType: '',
          });
        }).attach(window, 'load');

        var GNB_BRIGHTNESS_VALUE = {
          DARK_ICON: 0,
          DARK_ICON_AND_TRANSPARENCY: 1,
          BRIGHT_ICON_AND_TRANSPARENCY: 2,
          BRIGHT_ICON: 3,
        };

        var GNB_ITEM_HIDE_OPTION_BIT_VALUE = {
          DEFAULT: 0,
          HIDE_LOGIN_BTN: 1,
          HIDE_USER_LAYER: 2,
          HIDE_NAVER_ME_AREA: 4,
          HIDE_MAIL_ALARM_AREA: 8,
          HIDE_PROFILE_IMAGE: 16,
          SHOW_BENEFIT_FOR_STAFF_MEMBER: 32,
        };

        var smartSearch = '';

        var gnb_service = 'kin';

        var gnb_logout = encodeURIComponent('https://nid.naver.com/nidlogin.logout');

        var gnb_login = encodeURIComponent(location.href || 'https://kin.naver.com');

        var gnb_template = 'gnb_utf8';

        var gnb_item_hide_option = GNB_ITEM_HIDE_OPTION_BIT_VALUE.DEFAULT;

        $Fn(function () {
          getGNB();

          var bIsGnbClicked = false;

          $Fn(function (we) {
            if (!bIsGnbClicked) {
              gnbAllLayerClose();
            }

            bIsGnbClicked = false;
          }, this).attach(document.body, 'click');

          $Fn(function (we) {
            bIsGnbClicked = true;
          }, this).attach($('gnb'), 'click');

          try {
            $('autoFrame').src = '/static/reatcmp.html?v=4.1';
          } catch (e) {}

          smartSearch = new nhn.AjaxSuggestUS('nx_query', 'autoFrame', {
            url: 'https://ac.search.naver.com/nx/ac',
            cookieName: 'NaverSuggestUse',
            listbox: '_resultBox',
            sFromName: 'topSearch',
            triangleBtn: 'triangleBtn',
            sListMaxLength: 55,
            listMaxCount: 15,
            request_type: 'jsonp',
            request_data: {
              q: '{query}',
              st: '100',
              r_format: 'json',
              t_koreng: '1',
              q_enc: 'UTF-8',
              r_enc: 'UTF-8',
              r_unicode: '0',
              r_escape: '1',
              frm: 'kin',
            },
            sTriangleUpOn: 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_up.gif',
            sTriangleUpOff:
              'https://ssl.pstatic.net/sstatic/search/mypocket/v3/btn_atcmp_off_op2.gif',
            sTriangleDownOn: 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_down.gif',
            sTriangleDownOff: 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_down3.gif',
          }).attach({
            actSubmit: function () {
              try {
                top.selectAction(this._elForm);
              } catch (e) {
                try {
                  selectAction(this._elForm);
                } catch (e) {}
              }

              this._elForm.submit();
            },
          });

          var expertEntryBanner = $$.getSingle('div.gnb_eXpertLogo div.banner');
          if (!!expertEntryBanner) {
            var cookie = new $Cookie();

            $Fn(function () {
              $Element(expertEntryBanner).hide();

              var newDisabledUntil = new Date().getTime() + 3 * 1000 * 24 * 60 * 60;
              cookie.set('kin_expert_entry_banner_disabled_until', newDisabledUntil, 5);
            }).attach($$.getSingle('div.gnb_eXpertLogo div.banner button.buttonCancel'), 'click');

            var disabledUntilTimestamp = new Number(
              cookie.get('kin_expert_entry_banner_disabled_until')
            );
            if (!isNaN(disabledUntilTimestamp)) {
              if (new Date().getTime() > disabledUntilTimestamp) {
                cookie.remove('kin_expert_entry_banner_disabled_until');
                $Element(expertEntryBanner).show();
              }
            } else {
              $Element(expertEntryBanner).show();
            }
          }

          if (typeof nhn.Kin.ChatMenu !== 'undefined') {
            window.oChatMenu = new nhn.Kin.ChatMenu();
          }
        }).attach(window, 'load');
      </script>

      <div id="container" class="container-fluid">
        <div class="container-fluid-content">
          <div class="container-fluid-content-inner _containerFluidContentInner">
            <ul class="location" id="au_location">
              <!-- after -->
            </ul>
            <style type="text/css">
              .banner_kincommon {
                position: relative;
                float: right;
                width: 190px;
                margin: -40px 0 0 0;
                z-index: 23;
              }
              .banner_kincommon img {
                vertical-align: top;
              }
            </style>
            <div id="content" class="container-fluid-content__left">
              <!-- 카테고리 넣어주기 -->
            </div>
            <script type="text/javascript">
              $Fn(function () {
                nhn.Kin.Utility.startRollingCount(
                  $('todayQuestion'),
                  66786,
                  $('todayMobileQuestion'),
                  57651,
                  $('todayAnswer'),
                  118157
                );
              }).attach(document, 'domready');
            </script>
            <div class="kinqna_wp _kinqna_wp">
              <ul class="tab1 tab1_box" role="tablist">
                <!-- [KINSUS-31195] Q&A나 전문가답변 질문목록 Tab은 목록이 비어있는지 체크하지 않고 항상 노출한다. (성능 이슈) -->
                <li role="presentation" class="on">
                  <a
                    href="/qna/kinupList.naver"
                    class="item _nclicks:kls.best"
                    tabindex="-1"
                    aria-selected="true"
                    role="tab"
                    >Q&amp;A</a
                  >
                </li>
                <!-- after -->
              </ul>
              <!-- "kinqna_wp _kinqna_wp" -->
            </div>
            <script
              type="text/javascript"
              src="https://ssl.pstatic.net/static.kin/static/pc/20230201140250/js/min/naver.kin.QnaEnd.Tab.js"
            ></script>
            <script type="text/javascript">
              if (typeof naver.kin.QnaEnd.Tab !== 'undefined') {
                var oQnaEndTab = new naver.kin.QnaEnd.Tab();
              }
            </script>
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
                        <a
                          href="/qna/kinupList.naver?sort=answerCnt"
                          class="_nclicks:kls_bst.byanswer"
                          >답변<img
                            src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"
                            width="12"
                            height="12"
                            alt="정렬"
                        /></a>
                      </th>
                      <th scope="col" class="on">
                        <a
                          href="/qna/kinupList.naver?sort=writeTime"
                          class="_nclicks:kls_bst.bydate"
                          >작성<img
                            src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"
                            width="12"
                            height="12"
                            alt="정렬"
                        /></a>
                      </th>
                    </tr>
                  </thead>
                  <tbody id="au_board_list">
                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=8&amp;dirId=814&amp;docId=439818814"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:1,i:814_439818814"
                          >잠 잘 때</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=814"
                          class="_nclicks:kls_bst.dir,r:1,i:814_439818814"
                          >기타</a
                        >
                      </td>
                      <td class="t_num">2</td>
                      <td class="t_num">2분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=1&amp;dirId=10102&amp;docId=439818780"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:2,i:10102_439818780"
                          >호그와트레거시 노트북에서 돌아가나요?</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=10102"
                          class="_nclicks:kls_bst.dir,r:2,i:10102_439818780"
                          >노트북</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">2분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=2&amp;dirId=20410&amp;docId=439818699"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:3,i:20410_439818699"
                          >gta5사양</a
                        >

                        <img
                          src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"
                          width="13"
                          height="14"
                          alt="이미지첨부"
                          class="pic2 is_img"
                        />
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=20410"
                          class="_nclicks:kls_bst.dir,r:3,i:20410_439818699"
                          >GTA</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">3분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=8&amp;dirId=80101&amp;docId=439818683"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:4,i:80101_439818683"
                          >내가 막 지켜줘야할 것 같은 여자</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=80101"
                          class="_nclicks:kls_bst.dir,r:4,i:80101_439818683"
                          >연애, 결혼</a
                        >
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">3분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=8&amp;dirId=8020206&amp;docId=439818674"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:5,i:8020206_439818674"
                          >초코렛 상온 보관</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=8020206"
                          class="_nclicks:kls_bst.dir,r:5,i:8020206_439818674"
                          >초콜릿</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">4분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=4&amp;dirId=402&amp;docId=439818644"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:6,i:402_439818644"
                          >제가 원룸을 알아보고 있는데 보증금 30만원 하는 곳도...</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=402"
                          class="_nclicks:kls_bst.dir,r:6,i:402_439818644"
                          >부동산</a
                        >
                      </td>
                      <td class="t_num">3</td>
                      <td class="t_num">4분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=3&amp;dirId=3031001&amp;docId=439732290"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:7,i:3031001_439732290"
                          >강철중 공공의적 1-1</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=3031001"
                          class="_nclicks:kls_bst.dir,r:7,i:3031001_439732290"
                          >영화기획, 시나리<span class="ls0">...</span></a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">4분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=1&amp;dirId=1061203&amp;docId=439818577"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:8,i:1061203_439818577"
                          >인스타 차단하면 안 보이나요?</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=1061203"
                          class="_nclicks:kls_bst.dir,r:8,i:1061203_439818577"
                          >인스타그램</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">5분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=2&amp;dirId=20114&amp;docId=439818573"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:9,i:20114_439818573"
                          >이 스태프 어떤가요</a
                        >

                        <img
                          src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"
                          width="13"
                          height="14"
                          alt="이미지첨부"
                          class="pic2 is_img"
                        />
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=20114"
                          class="_nclicks:kls_bst.dir,r:9,i:20114_439818573"
                          >메이플스토리</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">5분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=5&amp;dirId=5010601&amp;docId=439818546"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:10,i:5010601_439818546"
                          >아이폰 백업 off</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=5010601"
                          class="_nclicks:kls_bst.dir,r:10,i:5010601_439818546"
                          >아이폰</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">5분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=4&amp;dirId=40610&amp;docId=439818544"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:11,i:40610_439818544"
                          >사무보조원도 괜찮은 직업인가요?</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=40610"
                          class="_nclicks:kls_bst.dir,r:11,i:40610_439818544"
                          >사무지원</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">5분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=7&amp;dirId=70111&amp;docId=439818527"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:12,i:70111_439818527"
                          >루돌프의 속도는?</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=70111"
                          class="_nclicks:kls_bst.dir,r:12,i:70111_439818527"
                          >피부과</a
                        >
                      </td>
                      <td class="t_num">2</td>
                      <td class="t_num">5분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=2&amp;dirId=20303&amp;docId=439818509"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:13,i:20303_439818509"
                          >총사령관 바로 밑에계급은 뭐에요?</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=20303"
                          class="_nclicks:kls_bst.dir,r:13,i:20303_439818509"
                          >메달오브아너</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">6분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=7&amp;dirId=70111&amp;docId=439818506"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:14,i:70111_439818506"
                          >초5 여드름 관련 질문</a
                        >

                        <img
                          src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"
                          width="13"
                          height="14"
                          alt="이미지첨부"
                          class="pic2 is_img"
                        />
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=70111"
                          class="_nclicks:kls_bst.dir,r:14,i:70111_439818506"
                          >피부과</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">6분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=4&amp;dirId=4020202&amp;docId=439818501"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:15,i:4020202_439818501"
                          >남의 집 우편물 뜯어보는 거</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=4020202"
                          class="_nclicks:kls_bst.dir,r:15,i:4020202_439818501"
                          >월세</a
                        >
                      </td>
                      <td class="t_num">2</td>
                      <td class="t_num">6분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=13&amp;dirId=130307&amp;docId=439818474"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:16,i:130307_439818474"
                          >3×3×3큐브좀 ㅠㅠ</a
                        >

                        <img
                          src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"
                          width="13"
                          height="14"
                          alt="이미지첨부"
                          class="pic2 is_img"
                        />
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=130307"
                          class="_nclicks:kls_bst.dir,r:16,i:130307_439818474"
                          >모바일게임</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">6분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=8&amp;dirId=81302&amp;docId=439818449"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:17,i:81302_439818449"
                          >씨유 끼택 하는법</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=81302"
                          class="_nclicks:kls_bst.dir,r:17,i:81302_439818449"
                          >택배</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">6분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=1&amp;dirId=10102&amp;docId=439818442"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:18,i:10102_439818442"
                          >노트북 화면 청소</a
                        >

                        <img
                          src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"
                          width="13"
                          height="14"
                          alt="이미지첨부"
                          class="pic2 is_img"
                        />
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=10102"
                          class="_nclicks:kls_bst.dir,r:18,i:10102_439818442"
                          >노트북</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">6분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=5&amp;dirId=511&amp;docId=439818423"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:19,i:511_439818423"
                          >롯데백화점 상품권</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=511"
                          class="_nclicks:kls_bst.dir,r:19,i:511_439818423"
                          >쇼핑몰, 시장</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">7분 전</td>
                    </tr>

                    <tr>
                      <td class="title">
                        <a
                          href="/qna/detail.naver?d1id=4&amp;dirId=4020202&amp;docId=439818385"
                          rel="KIN"
                          class="_nclicks:kls_bst.list,r:20,i:4020202_439818385"
                          >집주인 아줌마 심리</a
                        >
                      </td>
                      <td class="field">
                        <a
                          href="/qna/kinupList.naver?dirId=4020202"
                          class="_nclicks:kls_bst.dir,r:20,i:4020202_439818385"
                          >월세</a
                        >
                      </td>
                      <td class="t_num">1</td>
                      <td class="t_num">7분 전</td>
                    </tr>
                  </tbody>
                </table>

                <ww:if test="false"> </ww:if>
                <ww:else> </ww:else>

                <div class="paging space _tag_pager" style="display: none">
                  <div class="nav" style="display: block">
                    <p class="btn">
                      <a href="#" class="pr-prev _pre"
                        ><img
                          src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_prev.gif"
                          width="23"
                          height="23"
                          alt="이전"
                          title="이전" /></a
                      ><a href="#" class="pr-next _next"
                        ><img
                          src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_next.gif"
                          width="22"
                          height="23"
                          alt="다음"
                          title="다음"
                      /></a>
                    </p>
                  </div>
                </div>
                <div class="paginate _default_pager">
                  <a
                    href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=1"
                    class="on"
                    title="선택됨"
                    >1</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=2"
                    >2</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=3"
                    >3</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=4"
                    >4</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=5"
                    >5</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=6"
                    >6</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=7"
                    >7</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=8"
                    >8</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=9"
                    >9</a
                  >

                  <a href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=10"
                    >10</a
                  >

                  <a
                    href="/qna/kinupList.naver?queryTime=2023-02-18%2023%3A34%3A48&amp;page=11"
                    class="next"
                    >다음페이지</a
                  >
                </div>

                <div class="search">
                  <form name="bottom_search" id="bottom_search" method="get">
                    <input type="hidden" name="cs" value="utf8" />
                    <fieldset>
                      <legend>검색영역</legend>

                      <input
                        type="text"
                        accesskey="s"
                        title="검색어"
                        class="keyword"
                        name="query"
                        id="au_input_query"
                      />
                      <input
                        type="image"
                        alt="검색"
                        title="키워드 검색"
                        src="https://ssl.pstatic.net/static/kin/09renewal/btn_search.gif"
                        id="au_search_submit"
                      />
                    </fieldset>
                  </form>
                </div>
                <script
                  type="text/javascript"
                  src="https://ssl.pstatic.net/static.kin/static/pc/20230201140250/js/min/nhn.Kin.QnaEnd.InputQuery.js"
                ></script>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- <div id="wrap" class="wrap wrap_qna">의 div닫음 -->
    <footer></footer>
  </body>
</html>