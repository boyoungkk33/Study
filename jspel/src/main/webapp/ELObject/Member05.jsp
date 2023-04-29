<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.* , jspEL.ex01.*"%>

    <%
       request.setCharacterEncoding("utf-8");
   
     %>
<jsp:useBean id="memBean" class="jspEL.ex01.MemberBean"/>
<jsp:setProperty property="*" name="memBean"/>
<jsp:useBean id="memberList" class="java.util.ArrayList"/>
<%
  memberList.add(memBean);
  MemberBean memBean2= new MemberBean("leeyp","1234","이영표","leeyp@gmail.com");
  memberList.add(memBean2);
    
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력</title>
</head>
<body>
  <table border="1" align="center">
    <tr align="center" bgcolor="Lightgreen">
       <th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>주소</th>
    </tr>
    <tr>
       <td>${memberList[0].id}</td>
       <td>${memberList[0].pwd}</td>
       <td>${memberList[0].name}</td>
       <td>${memberList[0].email}</td>
    </tr>
      <tr>
       <td>${memberList[1].id}</td>
       <td>${memberList[1].pwd}</td>
       <td>${memberList[1].name}</td>
       <td>${memberList[1].email}</td>
    </tr>
  </table>
</body>
</html>