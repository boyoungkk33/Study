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
  <link rel="stylesheet" href="../css/product.css">

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
    <section class="product">
      <div class="product_inner">
        <div class="product_top clearfix">
          <div class="left">
            <img src="image/0240070027527.jpg" alt="#">
          </div>
          <div class="right">
            <p class="brand">
              <strong>브랜드명</strong>
            </p>
            <p class="item_name">
              상품명
            </p>
            <div class="price_area">
              <div class="price_row">
                <span class="price_menu">할인률</span>
                <span class="price_discount">10%</span>
              </div>
              <div class="price_row">
                <span class="price_menu">정상가</span>
                <span class="price_basic">70,000원</span>
              </div>
              <div class="price_row">
                <span class="price_menu">판매가</span>
                <span class="price_sell"><strong>70,000원</strong></span>
              </div>
              <div class="price_row">
                <span class="price_menu">수량</span>
                <span class="price_number">
                  <form action="#">
                    <fieldset>
                      <legend>수량 입력 폼</legend>
                      <input type="number" value="1" min="1" max="99">
                    </fieldset>
                  </form>
                </span>
              </div>
            </div>
            <a href="#" class="btn_buy">구매하기</a>
            <a href="#" class="btn_basket">장바구니</a>
          </div>
        </div>
        <div id="first" class="product_menu">
          <ul class="clearfix">
            <li class="active">
              <a href="#first">상세정보</a>
            </li>
            <li>
              <a href="#second">상품후기</a>
            </li>
            <li>
              <a href="#third">교환 및 반품 안내</a>
            </li>
          </ul>
        </div>
        <div class="product_image">
          <img src="image/air_300_06.jpg" alt="#">
        </div>

        <div id="second" class="product_menu">
          <ul class="clearfix">
            <li>
              <a href="#first">상세정보</a>
            </li>
            <li class="active">
              <a href="#second">상품후기</a>
            </li>
            <li>
              <a href="#third">교환 및 반품 안내</a>
            </li>
          </ul>
        </div>
        <div class="product_review">
          <table>
            <caption>게시판 목록</caption>
            <colgroup>
              <col width="70">
              <col width="50">
              <col width="auto">
              <col width="100">
              <col width="140">
              <col width="55">
            </colgroup>

            <thead>
              <tr>
                <th scope="col">번호</th>
                <th scope="col">사진</th>
                <th scope="col">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">작성일</th>
                <th scope="col">조회수</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>10</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>9</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>8</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>7</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>6</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>5</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>4</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>3</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>2</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
              <tr>
                <td>1</td>
                <td class="td_img">
                  <img src="image/0240030006612.jpg" alt="#">
                </td>
                <td class="left">
                  <a href="#">리뷰 제목입니다.</a>
                </td>
                <td>김수환</td>
                <td>2023-03-29</td>
                <td>100</td>
              </tr>
            </tbody>
          </table>
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
            <a href="write.html" class="btn_black">글쓰기</a>
          </div>
        </div>
        <div id="third" class="product_menu">
          <ul class="clearfix">
            <li>
              <a href="#first">상세정보</a>
            </li>
            <li>
              <a href="#second">상품후기</a>
            </li>
            <li class="active">
              <a href="#third">교환 및 반품 안내</a>
            </li>
          </ul>
        </div>
        <div class="product_refund">
          <table>
            <caption>배송/교환/반품/AS</caption>
            <colgroup>
              <col width="250">
              <col width="*">
            </colgroup>
            <tbody>
              <tr>
                <th>배송안내</th>
                <td>
                  <b>제품 수령 후 구성품을 꼭 확인해주세요.</b><br>
                  수령 후 30일이 지난 제품의 구성품 누락 및 오배송에 대한 문의는 당사에서 해결해 드리기 어려우니, <br>반드시 수령 후 구성품과 제품확인으로 문제가 없는지 확인해주시기
                  바랍니다.<br><br>
                  <b>제품 사진은 촬영시 카메라 플래쉬, 모니터에 따라 실제 제품 이미지와 다소 차이가 있을 수 있습니다.</b><br><br>
                  <b>제품 실측 사이즈는 측정에 따라 실제 사이즈와 약간의 오차가 발생할 수 있습니다.</b><br><br>
                  <b>주문상품 배송은 결제 확인 후 2~5일 정도 소요되며, 제품에 따라 배송일이 지연될 수 있음을 양해바랍니다.</b><br><br>
                  <b>택배사는 로젠택배를 이용하고 있으며, 배송 및 택배 관련 문의는 1588-9988 로젠택배로 문의하시기 바랍니다.</b><br><br>
                  <b>총 결제금액 50,000원 미만시 배송비 3,000원이 청구됩니다.(도서 산간지역 별도 적용)</b><br><br>
                  <b>제품에 따라 묶음배송 불가상품이 있으며, 주문금액과 상관없이 별도 배송비가 부과될 수 있습니다.</b>
                </td>
              </tr>
              <tr>
                <th>교환/반품안내</th>
                <td>
                  <b>교환/반품이 가능한 경우</b><br>
                  - 단순변심으로 인한 교환/반품은 왕복배송비를 고객님께서 지불해 주셔야 합니다.<br>
                  - 초기불량, 배송오류는 오캠몰에서 왕복 택배비를 부담하여 교환 및 반품처리 해드립니다.<br><br>

                  <b>교환/반품이 불가능한 경우</b><br>
                  - 상품 수령 후 7일을 초과한 경우 변심 또는 제품 만에 대한 교환/반품은 불가합니다.(디자인,사이즈,실측정보,소재,색상,스크래치,실밥 등)<br>
                  - 고객부주의 또는 제품 사용으로 상품훼손 등 상품 가치가 떨어진 경우 교환/반품이 불가합니다.<br>
                  - 브랜드 박스 개봉 및 훼손, 상품태그 제거 등 상품 가치가 떨어진 경우 교환/반품이 불가합니다.<br>
                  - 상품 초기불량 확인 후 고객의 과실에 의한 상품훼손 및 사용으로 상품 가치가 떨어진 경우 교환/반품이 불가합니다.<br>
                  - 세탁,수선 등 취급부주의로 인하여 상품이 훼손된 경우 교환/반품이 불가합니다.
                </td>
              </tr>
              <tr>
                <th>A/S안내</th>
                <td>
                  <b>제품 A/S는 반드시 손상된 제품이 입고되어야 A/S가 가능합니다.</b><br><br>
                  <b>본사제품의 경우 제품 결함에 의한 수리는 제품 구입일로부터 30일간 무상 A/S를 받으실 수 있습니다.</b><br>
                  그외 A/S는 모두 유상 수리로 진행되며, 일부 손상 정도에 따라 A/S가 불가할 수 있습니다.<br><br>
                  <b>자세한 A/S 정책은 AS라운지의 게시판을 참고해 주시기 바랍니다.</b>
                </td>
              </tr>
              <tr>
                <th>교환/반품/AS 주소</th>
                <td>
                  <b>주소 : (13550) 경기도 성남시 분당구 대왕판교로 361번길(궁내동) 오캠몰</b> <br>
                  <b> 연락처 : 031-712-4371</b><br><br>
                  교환/반품/AS접수는 로젠택배(1588-9988)로 전화하셔서 배송 운송장 번호 또는 개별접수로 반송해 주시면 됩니다.
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </div>
<jsp:include page="../index/footer.jsp"></jsp:include>


</body>

</html>