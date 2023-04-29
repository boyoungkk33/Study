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
  <link rel="stylesheet" href="../css/register_confirm.css">

  <!-- js -->
  <script src="../js/jquery-3.6.4.min.js"></script>
  <script src="../js/header.js"></script>
  <script src="../js/animation.js"></script>

  <!-- 꽃가루 -->
  <script src="../js/confetti_v2.js"></script>
  <script src="../js/register_confirm.js"></script>

  <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
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

  <div id="ex1" class="modal">
    <h2>
      <strong>이용약관</strong>
    </h2>
    <br>
    <p>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tempora harum facere tempore iure recusandae veniam amet deserunt excepturi sequi esse perspiciatis adipisci cumque, delectus, nihil nostrum maxime. Reiciendis, deleniti tempore.
    </p>
  </div>

  <div id="ex2" class="modal">
    <h2>
      <strong>개인정보처리방침</strong>
    </h2>
    <br>
    <p>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tempora harum facere tempore iure recusandae veniam amet deserunt excepturi sequi esse perspiciatis adipisci cumque, delectus, nihil nostrum maxime. Reiciendis, deleniti tempore.
    </p>
  </div>

  <jsp:include page="../index/header.jsp"></jsp:include>

  <div class="container">
    <section class="register_confirm">
      <div class="register_confirm_inner">
        <h2>회원가입 완료</h2>
        <p><strong>%s님!</strong> 캠프몰 사이트에 회원가입 하신 것을 환영합니다.</p>
        <a href="index.html" class="btn_index">메인으로</a>
      </div>
    </section>

    <canvas id="canvas"></canvas>
    <button class="canvasBtn" id="stopButton">Stop Confetti</button>
	  <button class="canvasBtn" id="startButton">Drop Confetti</button>
  </div>

  <jsp:include page="../index/footer.jsp"></jsp:include>
</body>

</html>