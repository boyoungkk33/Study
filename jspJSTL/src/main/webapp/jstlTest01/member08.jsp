<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*,jspJSTL.ex01.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  request.setCharacterEncoding("utf-8");
%>
<%
     request.setCharacterEncoding("utf-8");
     List memberList=new ArrayList();
     MemberBean mem1=new MemberBean("son","1234","손흥민","son@naver.com");
     MemberBean mem2=new MemberBean("kim","4321","김철수","kim@naver.com");
     MemberBean mem3=new MemberBean("hong","1111","홍길동","hong@naver.com");
     memberList.add(mem1);
     memberList.add(mem2);
     memberList.add(mem3);
    %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core 태그 라이브러리</title>
</head>
<body>
<table border="1" align="center" width="400">
  <tr align="center" bgcolor="Lightgreen">
    <th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th>
  </tr>
  <c:choose>
    <c:when test="${empty param.id}">
      <tr align="center">
        <td colspan="5">아이디를 입력해주세요!!</td>
      </tr>
    </c:when>
    <c:otherwise>
      <tr>
        <td>${param.id}</td> 
        <td>${param.pwd}</td>    
        <td>${param.name}</td>    
        <td>${param.email}</td>    
      </tr>
    </c:otherwise>
  </c:choose>
</table>
</body>
</html>