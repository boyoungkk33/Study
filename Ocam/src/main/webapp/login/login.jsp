
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
  <link rel="stylesheet" href="../css/login.css">

  <!-- js -->
  <script src="../js/jquery-3.6.4.min.js"></script>
  <script src="../js/header.js"></script>
  <script src="../js/animation.js"></script>
  <script src="../js/login.js"></script>
</head>

<body>
  <div class="arrow">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill arrow-up" viewBox="0 0 16 16">
      <path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/>
    </svg>
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill arrow-down" viewBox="0 0 16 16">
      <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
    </svg>
  </div>

  <jsp:include page="../index/header.jsp"></jsp:include>


  <div class="container">
    <section class="login">
      <div class="login_inner">
        <h2>LOGIN</h2>
        <form action="#">
          <fieldset>
            <legend>로그인 폼</legend>
            <div class="input_box">
              <p class="title">
                <strong>이메일 주소</strong>
              </p>
              <input type="email" class="input_email" placeholder="예) camp@campmall.com" required>
              <p class="warning_email">이메일 주소를 정확하게 입력해주세요.</p>
            </div>
            <div class="input_box">
              <p class="title">
                <strong>비밀번호</strong>
              </p>
              <input type="password" class="input_password" autocomplete="on" required>
              <p class="warning_password">영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
            </div>
            <a href="#" class="btn_member">로그인</a>
            <ul>
              <li>
                <a href="register.html">이메일 가입</a>
              </li>
              <li>
                <a href="find_email.html">이메일 찾기</a>
              </li>
              <li>
                <a href="find_pwd.html">비밀번호 찾기</a>
              </li>
            </ul>
          </fieldset>
        </form>
      </div>
    </section>
  </div>


<jsp:include page="../index/footer.jsp"></jsp:include>


</body>

</html>