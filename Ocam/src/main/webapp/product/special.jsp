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
  <link rel="stylesheet" href="../css/item.css">

  <!-- js -->
  <script src="../js/jquery-3.6.4.min.js"></script>
  <script src="../js/header.js"></script>
  <script src="../js/animation.js"></script>
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

  <jsp:include page="../index/header.jsp"></jsp:include>


  <div class="container">
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
        <div class="top_area">
          <h2>SPECIAL PRICE ITEMS</h2>
          <select>
            <option>상품정렬</option>
            <option>낮은가격</option>
            <option>높은가격</option>
          </select>
        </div>
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

    <div class="paging">
      <ul class="paging_list">
        <li class="paging_left">
          <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
              class="bi bi-chevron-left" viewBox="0 0 16 16">
              <path fill-rule="evenodd"
                d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
            </svg>
          </a>
        </li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li class="paging_right">
          <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
              class="bi bi-chevron-right" viewBox="0 0 16 16">
              <path fill-rule="evenodd"
                d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
            </svg>
          </a>
        </li>
      </ul>
    </div>
  </div>

<jsp:include page="../index/footer.jsp"></jsp:include>

</body>

</html>