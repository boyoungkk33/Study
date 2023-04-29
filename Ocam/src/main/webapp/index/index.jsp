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
  <link rel="stylesheet" href="../css/index.css">

  <!-- js -->
  <script src="../js/jquery-3.6.4.min.js"></script>
  <script src="../js/header.js"></script>

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

  <!-- modal 영역 시작 -->
  <div id="company" class="modal">
    <h2>
      <strong>회사소개</strong>
    </h2>
    <br>
    <p>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tempora harum facere tempore iure recusandae veniam amet deserunt excepturi sequi esse perspiciatis adipisci cumque, delectus, nihil nostrum maxime. Reiciendis, deleniti tempore.
    </p>
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
  <!-- model 영역 종료 -->

  <jsp:include page="../index/header.jsp"></jsp:include>


  <div class="container">
    <div class="banner">
      <div class="banner_slide">
        <a href="#">
          <img src="image/event_0714.jpg" alt="#">
        </a>
      </div>
    </div>

    <div class="category">
      <div class="category_inner">
        <ul class="clearfix">
          <li>
            <a href="#">
              <img src="image/main_category_icon_12.png" alt="#">
              <p>듀랑고VR</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_01.png" alt="#">
              <p>텐트ㆍ타프</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_02.png" alt="#">
              <p>침낭ㆍ매트</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_03.png" alt="#">
              <p>퍼니처</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_04.png" alt="#">
              <p>라이팅</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_05.png" alt="#">
              <p>화로ㆍBBQ</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_06.png" alt="#">
              <p>키친</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_07.png" alt="#">
              <p>계절용품</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_08.png" alt="#">
              <p>스토리지</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_09.png" alt="#">
              <p>RV용품</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_10.png" alt="#">
              <p>액세사리</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/main_category_icon_11.png" alt="#">
              <p>밀리터리</p>
            </a>
          </li>
        </ul>
      </div>
    </div>

    <section class="item">
      <div class="item_inner">
        <h2>NEW ARRIVAL</h2>
        <ul class="clearfix">
          <li>
            <a href="product.html">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
        </ul>
      </div>
    </section>

    <section class="item">
      <div class="item_inner">
        <h2>BEST ARRIVAL</h2>
        <ul class="clearfix">
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
        </ul>
      </div>
    </section>

    <section class="item">
      <div class="item_inner">
        <h2>MD'S PICK</h2>
        <ul class="clearfix">
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240070027527.jpg" alt="#">
              <h3>듀랑고</h3>
              <p class="content">슬림가스스토브 #</p>
              <p class="price discount">100,000원</p>
              <p class="price">100,000원</p>
              <p class="percent">10%</p>
            </a>
          </li>
        </ul>
      </div>
    </section>

    <section class="review">
      <div class="review_inner">
        <h2>REVIEW</h2>
        <ul class="clearfix">
          <li>
            <a href="#">
              <img src="image/0240030006612.jpg" alt="">
              <div class="content">
                <p class="text">테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트</p>
                <p class="user">test</p>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240030006612.jpg" alt="">
              <div class="content">
                <p class="text">테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트</p>
                <p class="user">test</p>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240030006612.jpg" alt="">
              <div class="content">
                <p class="text">테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트</p>
                <p class="user">test</p>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240030006612.jpg" alt="">
              <div class="content">
                <p class="text">테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트</p>
                <p class="user">test</p>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <img src="image/0240030006612.jpg" alt="">
              <div class="content">
                <p class="text">테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트 테스트</p>
                <p class="user">test</p>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </section>

    <div class="marquee">
      <div class="marquee_inner">
        <div class="marquee-img">
          <a href="#">
            <img src="image/brand_05_ocamall.jpg" alt="#">
          </a>
        </div>
        <div class="marquee-img">
          <a href="#">
            <img src="image/brand_05_ocamall.jpg" alt="#">
          </a>
        </div>
        <div class="marquee-img">
          <a href="#">
            <img src="image/brand_05_ocamall.jpg" alt="#">
          </a>
        </div>
        <div class="marquee-img">
          <a href="#">
            <img src="image/brand_05_ocamall.jpg" alt="#">
          </a>
        </div>
        <div class="marquee-img">
          <a href="#">
            <img src="image/brand_05_ocamall.jpg" alt="#">
          </a>
        </div>
        <div class="marquee-img">
          <a href="#">
            <img src="image/brand_05_ocamall.jpg" alt="#">
          </a>
        </div>
        <div class="marquee-img">
          <a href="#">
            <img src="image/brand_05_ocamall.jpg" alt="#">
          </a>
        </div>
      </div>
    </div>
  </div>


<jsp:include page="../index/footer.jsp"></jsp:include>

</body>

</html>