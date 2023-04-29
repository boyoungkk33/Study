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
  <link rel="stylesheet" href="../css/search.css">

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

  <jsp:include page="header.jsp"></jsp:include>


  <div class="container">
    <section class="search">
      <div class="search_inner">
        <h2>SEARCH</h2>
        <div class="search_area">
          <form action="#">
            <input type="search">
            <a href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
                viewBox="0 0 16 16">
                <path
                  d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
              </svg>
            </a>
          </form>
        </div>

        <section class="item">
          <div class="item_inner">
            <h3>%s(으)로 검색한 결과: %d</h3>
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
    </section>
  </div>

<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>