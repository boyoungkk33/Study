<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
   request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>캠프몰</title>

  <!-- css -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
  <link rel="stylesheet" href="../css/reset.css">
  <link rel="stylesheet" href="../css/header.css">
  <link rel="stylesheet" href="../css/footer.css">
  <link rel="stylesheet" href="../css/register.css">

  <!-- js -->
  <script src="../js/jquery-3.6.4.min.js"></script>
  <script src="../js/header.js"></script>
  <script src="../js/animation.js"></script>
  <script src="../js/register.js"></script>

  <!-- Daum Postcode API -->
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  <script src="../js/postcode.js"></script>

  <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
</head>

<body>
  <div class="arrow">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
      class="bi bi-caret-up-fill arrow-up" viewBox="0 0 16 16">
      <path
        d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
    </svg>
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
      class="bi bi-caret-down-fill arrow-down" viewBox="0 0 16 16">
      <path
        d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
    </svg>
  </div>

  <div id="ex1" class="modal">
    <h2>
      <strong>이용약관</strong>
    </h2>
    <br>
    <p>
      Lorem ipsum dolor sit amet consecetur, adipisicing elit. Tempora harum facere tempore iure recusandae veniam amet
      deserunt excepturi sequi esse perspiciatis adipisci cumque, delectus, nihil nostrum maxime. Reiciendis, deleniti
      tempore.
    </p>
  </div>

  <div id="ex2" class="modal">
    <h2>
      <strong>개인정보처리방침</strong>
    </h2>
    <br>
    <p>
      Lorem ipsum dolor site amet consectetur, adipisicing elit. Tempora harum facere tempore iure recusandae veniam amet
      deserunt excepturi sequi esse perspiciatis adipisci cumque, delectus, nihil nostrum maxime. Reiciendis, deleniti
      tempore.
    </p>
  </div>

	<jsp:include page="../index/header.jsp"></jsp:include>
	
  <div class="container">
    <section class="register">
      <div class="register_inner">
        <h2>REGISTER</h2>
        <form id="register_form" action="${contextPath}/register/addMember.do" method="post">
          <fieldset>
            <legend>회원가입 폼</legend>
            <div class="input_box">
              <p class="title">
                <strong>이메일 <span class="red_star">*</span></strong>
              </p>
              <input type="text" name="email" class="input_email" placeholder="예) ocamall@gmail.com" required>
              <p class="warning_email">이메일을 정확하게 입력해주세요.</p>
            </div>
            <div class="input_box">
              <p class="title">
                <strong>비밀번호 <span class="red_star">*</span></strong>
              </p>
              <input type="password" name="pwd" class="input_password" autocomplete="on" placeholder="영어, 숫자, 특수문자 조합 8-16자"
                required>
              <p class="warning_password">영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
            </div>
			  <div class="input_box">
              <p class="title">
                <strong>주소 <span class="red_star">*</span></strong>
              </p>
              <input type="text" name="postcode" id="postcode" class="addr_number" readonly>
              <a href="javascript:execDaumPostcode();" class="btn_addr">우편번호</a>
              <input type="text" name="address" id="address" class="addr_basic" readonly>
              <input type="text" name="detailAddress"id="detailAddress" class="addr_detail" placeholder="상세주소">
            </div>
            <div class="input_box">
              <p class="title">
                <strong>휴대폰 <span class="red_star">*</span></strong>
              </p>
              <input type="text" name="phone" id="phone" class="input_phone" maxlength="12" required>
            </div>
            <div class="input_box">
              <p class="title">
                <strong>이름 <span class="red_star">*</span></strong>
              </p>
              <input type="text" name="name" id="member_name" class="input_name">
            </div>
            <div class="agree">
              <div class="essential">
                <label>
                  <input type="checkbox" class="all">[필수] 만 14세 이상이며 모두 동의합니다.
                </label>
                <a href="#">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus"
                    viewBox="0 0 16 16">
                    <path
                      d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                  </svg>
                </a>
                <ul>
                  <li>
                    <p class="indent">
                      <label>
                        <input type="checkbox">이용약관 동의
                      </label>
                      <a href="#ex1" rel="modal:open">내용보기</a>
                    </p>
                  </li>
                  <li>
                    <p class="indent">
                      <label>
                        <input type="checkbox">개인정보 수집 및 이용 동의
                      </label>
                      <a href="#ex2" rel="modal:open">내용보기</a>
                    </p>
                  </li>
                </ul>
              </div>
              <div class="select">
                <label>
                  <input type="checkbox" class="all">[선택] 광고성 정보 수신에 모두 동의합니다.
                </label>
                <a href="#">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus"
                    viewBox="0 0 16 16">
                    <path
                      d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                  </svg>
                </a>
                <ul>
                  <li>
                    <p class="indent">
                      <label>
                        <input type="checkbox">문자 메시지
                      </label>
                    </p>
                  </li>
                  <li>
                    <p class="indent">
                      <label>
                        <input type="checkbox">이메일
                      </label>
                    </p>
                  </li>
                </ul>
              </div>
            </div>
            <input type="submit" value="회원가입" class="btn_member">
          </fieldset>
        </form>
      </div>
    </section>
  </div>
  
  <jsp:include page="../index/footer.jsp"></jsp:include>
  
</body>
</html>