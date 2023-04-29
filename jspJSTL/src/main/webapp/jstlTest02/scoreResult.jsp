<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

  request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학점 변환 결과창</title>

</head>
<body>
<c:set var="score" value="${param.score}"/>
<c:choose>
    <c:when test="${score >=0 && score <=100}">
     <h2>${param.name}님의 시험점수는 ${score}점이고</h2>
    <c:choose> 
         <c:when test="${score>=90}">
              <h2>A학점입니다.</h2>
        </c:when>
           <c:when test="${score>=80}">
              <h2>B학점입니다.</h2>
        </c:when>
           <c:when test="${score>=70}">
              <h2>C학점입니다.</h2>
        </c:when>
           <c:when test="${score>=60}">
              <h2>D학점입니다.</h2>
        </c:when>
        <c:otherwise>
              <h2>F학점입니다.</h2>
        </c:otherwise>
    </c:choose>  
    </c:when>
    <c:otherwise>
       <h2>점수를 잘못 입력했습니다. 다시 입력해주세요</h2>
       <a href="score.jsp">점수 입력창으로 이동</a> 
    </c:otherwise>
</c:choose>

</body>
</html>