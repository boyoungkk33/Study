
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"
    %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>
      <c:set var="price" value="3500000"/>
      <fmt:formatNumber var="priceNum" value="${price}" type="number"/>
            상품가격 :${priceNum}원
   </h2>
   <h2>
      <c:set var="rate" value="0.2"/>
      <fmt:formatNumber var="rateNum" value="${rate}" type="percent" groupingUsed="false"/>
      할인율:${rateNum}      
   </h2>
      <h2>
      <c:set var="price2" value="2600000"/>
      <fmt:formatNumber var="priceNum2" value="${price2}" type="currency" currencySymbol="$" />  
            상품가격 :${priceNum2}원
   </h2>
   <h2>
      <c:set var="now"  value="<%=new Date() %>"/>
      <fmt:formatDate value="${now}" type="date" var="fdNow"/>
      <fmt:formatDate value="${now}" type="date" var="fdNow" dateStyle="full"/>
      <fmt:formatDate value="${now}" type="time" var="ftNow"/>      
      <fmt:formatDate value="${now}" type="both" var="fdtNow"/>   
      오늘 : ${fdNow}<br>
      오늘 : ${fdNow2}<br>
      현재시간:${ftNow}<br>
      현재:${fdtNow }<br>
      현재 한국 시간: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/><br>
      <fmt:timeZone value="America/New York">
      현재 미국/뉴욕 시간: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/><br>
      </fmt:timeZone>
   
   </h2>
</body>
</html>