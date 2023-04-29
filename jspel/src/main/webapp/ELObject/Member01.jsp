<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       request.setCharacterEncoding("utf-8");
       String id=request.getParameter("id");
       String pwd=request.getParameter("pwd");
       String name=request.getParameter("name");
       String email=request.getParameter("email");
       %>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getParameter메서드와 표현식을 이용한 회원정보 출력</title>
</head>
<body>
  <table border="1" align="center">
    <tr align="center" bgcolor="Lightgreen">
       <th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th>
    </tr>
    <tr>
       <td><%=id %></td>
       <td><%=pwd %></td>
       <td><%=name %></td>
       <td><%=email %></td>
    </tr>
  </table>

</body>
</html>