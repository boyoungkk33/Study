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
<title>회원정보</title>
</head>
<body>
    <h2 align="cetner" >회원정보</h2>
    <table border="1" align='center'>
    <tr align="center" bgcolor="lightgreen">
       <th>아이디</th><th>패스워드</th><th>이름</th><th>이메일</th>
    </tr>
    <tr align="cetner">
           <td>${id}</td>
           <td>${pwd}</td>
           <td>${name}</td>
           <td>${email}</td>
           </tr>
    </table>
</body>
</html>