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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core 태그 라이브러리</title>
</head>
<body>
  <table border="1" align="center">
    <tr align="center" bgcolor="Lightgreen">
       <th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th>
    </tr>
    <tr>
       <td>${id}</td>
       <td>${pwd}</td>
       <td>${name}</td>
       <td>${address}</td>
  
    </tr>
  </table>


</body>
</html>