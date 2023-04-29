<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
     request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과창</title>
</head>
<body>
   <c:if test="${empty param.user_id}">
     <p>아이디를 입력하세요!!</p>
     <a href="login.jsp">로그인 창으로 이동</a>
   </c:if>
   <c:if test="${not empty param.user_id}">
     <c:if test="${param.user_id =='admin'}">
       <h2>관리자로 로그인 했습니다.</h2>
       <input type="button" value="상품정보 등록하기">
       <input type="button" value="상품정보 수정하기">
       <input type="button" value="관리자 페이지">
     </c:if>
     <c:if test="${param.user_id !='admin'}">
       <h2>환영합니다. ${param.user_id}님</h2>
     </c:if>
   </c:if>
</body>
</html>