<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%
      request.setCharacterEncoding("utf-8");
    %>
<jsp:useBean id="memMap" class=java.util.HashMap"/>

<%
  memMap.put("id","hong");
  memMap.put("pwd","1234");
  memMap.put("name","홍길동");
  memMap.put("address","서울시 종로구");
%>
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
       <td>${memMap.id}</td>
       <td>${memMap.pwd}</td>
       <td>${memMap.name}</td>
       <td>${memMap.address}</td>
    </tr>
  </table>


</body>
</html>