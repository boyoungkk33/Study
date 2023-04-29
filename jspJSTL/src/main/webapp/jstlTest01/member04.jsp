<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  request.setCharacterEncoding("utf-8");
%>
<c:set var="id" value="hong" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<c:set var="name" value="${'홍길동'}" scope="page"/>
<c:set var="age" value="${25}" scope="page"/>
<c:set var="height" value="${175}" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core 태그 라이브러리</title>
</head>
<body>
<table border="1" align="center" width="400">
  <tr align="center" bgcolor="Lightgreen">
    <th>아이디</th><th>비밀번호</th><th>이름</th><th>나이</th><th>키</th>
  </tr>
  <c:choose>
    <c:when test="${empty name}">
      <tr align="center">
        <td colspan="5">이름을 입력해주세요!!</td>
      </tr>
    </c:when>
    <c:otherwise>
      <tr>
        <td>${id}</td> 
        <td>${pwd}</td>    
        <td>${name}</td>    
        <td>${age}</td>    
        <td>${height}</td>
      </tr>
    </c:otherwise>
  </c:choose>
</table>
</body>
</html>