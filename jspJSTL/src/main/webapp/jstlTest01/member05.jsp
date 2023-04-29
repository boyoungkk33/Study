<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
      List dataList=new ArrayList();
      dataList.add("오늘은 배웁니다.");
      dataList.add("오늘은 수요일입니다.");
      dataList.add("jsp 배우는중입니다...");
%>
<c:set var="list" value="<%=dataList%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core 태그 라이브러리</title>
</head>
<body>
   <c:forEach var="i" begin="1" end="5" step="1">
         <h2>안녕하세요</h2>
   </c:forEach>
   
     <c:forEach var="i" begin="1" end="5" step="1">
         <h2>5x${i} = ${5*i}</h2>
   </c:forEach>
   <c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
         <h2>i=${i} ====> 반복횟수 : ${loop.count}</h2>
   </c:forEach>
   <c:forEach var="data" items="${list}">
       <h2>${data}</h2>   
   </c:forEach>
   <c:set var="fruits" value="사과,참와,딸기,토마토,바나나" />
   <c:forTokens var="token" items="${fruits}" delims=",">
       <h2>과일 : ${token} </h2>
   </c:forTokens>

</body>
</html>