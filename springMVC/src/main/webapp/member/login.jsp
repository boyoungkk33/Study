<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
       isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
   <h2>로그인 결과</h2>
   <h2>아이디: ${id}</h2>
   <h2>비밀번호: ${pwd}</h2>

</body>
</html>