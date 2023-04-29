<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 액션 태그</title>
</head>
<body>
     <h1>이젠 쇼핑몰</h1>
     <jsp:include page="img_include.jsp">
        <jsp:param value="곰돌이" name="name"/> 
        <jsp:param value="1.png" name="imgName"/>
     </jsp:include>
     <p> 저희 쇼핑몰을 자주 찾아와 주세요</p>
</body>	
</html>