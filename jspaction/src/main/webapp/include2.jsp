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
 <h1>커뮤니티</h1>
     <jsp:include page="img_include.jsp">
        <jsp:param value="강아지풀" name="name"/> 
        <jsp:param value="2.png" name="imgName"/>
     </jsp:include>
     <p>제품에 필요한 여러가지 사용법을 알려드리고 있어요</p>
</body>
</html>