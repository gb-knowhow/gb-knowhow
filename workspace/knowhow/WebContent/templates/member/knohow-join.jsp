<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/knohow-join.css">
</head>
<body>
	<header id="header">
		<jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" flush="true" />
	</header>
	<form action="joinAction.member" method="post" enctype="multipart/form-data" >
    <div class="wrapper">
        <div class="section">
            <div class="content">
                <div class="find-by-id">
                    <strong>회원가입</strong>
                    <div class="form_info">
                        <div class="form-list">
                            <p class="sub-title1">
                                <span class="span-text1">회원정보 입력</span>
                            </p>
                            <p class="p-text1"></svg>필수기제 사항입니다 모두 입력후 확인 버튼을 눌러주세요.</p>
                            <div class="form-content">
                                <div class="form-email">
                                    <div class="input-form">
                                        <span class="absolute">아이디</span>
                                        <div>
                                            <div class="">
                                                <div class="email-box">
                                                    <div class="email-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="text" id="id" class="input" name="memberIdentification">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="err-id">필수입력 사항입니다.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-email">
                                    <div class="input-form">
                                        <span class="absolute">비밀번호</span>
                                        <div>
                                            <div class="">
                                                <div class="email-box">
                                                    <div class="email-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="password" id="password" class="input" name="memberPassword">
                                                            <div class="password-eye1"></div>
                                                            <div class="password-eye3" style="display: none;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="err-password"><svg xmlns="http://www.w3.org/2000/svg" width="7" height="7" viewBox="0 0 7 7" class="icon__IT9jA"><path fill="#FF7B7B" d="m4.356 2.398 2.088-.792.486 1.386-2.124.702 1.332 1.764-1.188.882-1.332-1.854-1.26 1.854-1.206-.882 1.332-1.764-2.088-.702.486-1.386 2.034.792V.148h1.44z"></path></svg>필수입력 사항입니다.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-email">
                                    <div class="input-form">
                                        <span class="absolute">비밀번호 확인</span>
                                        <div>
                                            <div class="">
                                                <div class="email-box">
                                                    <div class="email-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="password" id="password-check" class="input">
                                                            <div class="password-eye2"></div>
                                                            <div class="password-eye4" style="display: none;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="err-password-check">필수입력 사항입니다.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-email">
                                    <div class="input-form">
                                        <span class="absolute">이메일</span>
                                        <div>
                                            <div class="">
                                                <div class="email-box">
                                                    <div class="email-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="text" id="email" class="input" name="memberEmail">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="err-email">필수입력 사항입니다.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-email">
                                    <div class="input-form">
                                        <span class="absolute">닉네임</span>
                                        <div>
                                            <div class="">
                                                <div class="email-box">
                                                    <div class="email-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="text" id="nick-name" class="input" name="memberNickname">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="err-nick">필수입력 사항입니다.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-email">
                                    <div class="input-form">
                                        <span class="absolute">이름</span>
                                        <div>
                                            <div class="">
                                                <div class="form-email">
                                                    <div class="eamil-box">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="text" id="name" class="input" name="memberName">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="err-name" style="display:none">필수입력 사항입니다.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-email">
                                    <div class="input-form">
                                        <span class="absolute">나이</span>
                                        <div>
                                            <div class="">
                                                <div class="email-box">
                                                    <div class="email-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="text" id="age" placeholder="" class="input" name="memberAge">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="err-age">필수입력 사항입니다.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 이력서 -->
                <div class="resume">
                    <div class="resume-info">
                        <p class="sub-title">
                            <span class="span-text">은퇴자 추가 기제사항</span>
                        </p>
                        <p class="p-text"><svg xmlns="http://www.w3.org/2000/svg" width="7" height="7" viewBox="0 0 7 7" class="icon__IT9jA"><path fill="#FF7B7B" d="m4.356 2.398 2.088-.792.486 1.386-2.124.702 1.332 1.764-1.188.882-1.332-1.854-1.26 1.854-1.206-.882 1.332-1.764-2.088-.702.486-1.386 2.034.792V.148h1.44z"></path></svg>은퇴자일 경우 이력서를 체출해 주세요.</p>
                        
                        <div class="form-resume">
                            
                            <div class="input-form-resume">
                                
                                <span class="absolute-resume">이력서</span>
                                <div>
                                    <div class="">
                                        <div class="resume-box">
                                            <div class="resume-input">
                                                <div class="input-box">
                                                    <label for="attach">
                                                        <div class="image"></div>
                                                        <div class="file-name"></div>
                                                    </label>
                                                    <input type="file" id="attach" style="display: none" name="memberResume" />
                                                </div>
                                                <span class="cancel">X</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <span class="inquiry">
                            <input type="checkbox" class="checkbox" id="ck">
                            <label for="ck" class="for-label">
                                <i class="icon-checkbox"></i>
                                <span class="text-label">
                                    입력하신 정보를 KONHOW 에게 제공하는 것을 동의 합니다.
                                </span>
                            </label>
                        </span>
                        <div class="bt">
                            <button type="button" class="back-button">취소</button>
                            <button type="submit" class="complete-button" >완료</button>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
  </form>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/member/knohow-join.js">
			let contextPath = "${pageContext.request.contextPath}" 
</script>
</html>