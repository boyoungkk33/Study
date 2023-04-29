<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
   request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력 창</title>
</head>
<body>
   <table align="center" border="1" width="1000">
      <tr align ="center" bgcolor="lightgreen">
      <th>아이디</th><th>비밀번호</th><th>아름</th><th>이메일</th><th>가입일</th>
      </tr>
      <c:choose>
         <c:when test="${memberList == null }">
            <tr>
               <td colspan="5">등록된 회원이 없습니다</td>
            </tr>
         </c:when>
         <c:when test="${memberList != null }">
             <c:forEach var="member" items="${ memberList}">
                <tr align="center">
                   <td>${member.id}</td>
                   <td>${member.pwd}</td>
                   <td>${member.name}</td>
                   <td>${member.email}</td>
                   <td>${member.joinDate}</td>
                </tr>
             </c:forEach>
         </c:when>
      </c:choose>
   </table>
</body>
</html>