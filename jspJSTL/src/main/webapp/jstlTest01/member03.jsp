<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%
      request.setCharacterEncoding("utf-8");
    
    %>
<c:set var="id" value="hong" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<c:set var="name" value="홍길동" scope="page" />
<c:set var="address" value="서울시 종로구" scope="page" />
<c:set var="age" value="50" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core 태그 라이브러리</title>
</head>
<body>
<c:if test="${id=='hong'}">
<h2>안녕하세요 ${name}님!!</h2>
</c:if>
<c:if test="${age>=19}">
<a href="http://kbs.co.kr">제품구매하기</a>
</c:if>
</body>
</html>