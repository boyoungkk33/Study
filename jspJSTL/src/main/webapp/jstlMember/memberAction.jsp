<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspJSTL.ex01.*"%>
<%
   request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memBean" class="jspJSTL.ex01.MemberBean"/>
<jsp:setProperty property="*" name="memBean"/>
<%
   MemberDAO memDAO=new MemberDAO();
   memDAO.addMember(memBean);
   List memberList=memDAO.listMembers();
   request.setAttribute("memberList",memberList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그를 이용한 DB활용</title>
</head>
<body>
   <jsp:forward page="memberjstl.jsp"/>
</body>
</html>