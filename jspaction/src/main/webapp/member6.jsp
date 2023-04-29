<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspAction.ex01.*" %> 

 <% 
 request.setCharacterEncoding("utf-8"); 
 %>
 
 <jsp:useBean id="memBean" class="jspAction.ex01.MemberBean" scope="page"> </jsp:useBean>
  

  <%
  String command=request.getParameter("command");
  MemberDAO dao=new MemberDAO();
  if (command !=null && command.equals("addMember")){
 %>
  <jsp:setProperty property="id" name="memBean"/>
 <%
      dao.addMember(memBean); //회원정보 테이블에 추가
  }else if(command !=null && command.equals("delMember")){
	  String id=request.getParameter("id");
	  dao.delMember(id); //회원정보 테이블에서 삭제
  }
  List memberList=dao.listMembers();//전체 회원 정보를 조회

  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
      <h2 align="center">회원 목록</h2>
      <table border="1" align="center">
       <tr align="center" bgcolor="cyan">
          <th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>가입일</th><th>삭제</th>
       </tr>
       <%
          if(memberList.size() == 0){ 
       %>
           <tr><td colspan="6">
           <p align ="center" >등록된 회원이 없습니다.</p>
           </td></tr>
        <%
          }else{
        	  for(int i=0; i<memberList.size(); i++){
        		  MemberBean bean=(MemberBean)memberList.get(i);
  
        %>
          <tr align="center">
            <td><%=bean.getId() %></td>
            <td><%=bean.getPwd() %></td>
            <td><%=bean.getName() %></td>
            <td><%=bean.getEmail() %></td>
            <td><%=bean.getJoinDate() %></td>
            <td><a href="/jspaction/member.jsp?command=delMember&id=<%=bean.getId()%>">삭제</a></td>
          </tr>
          
          <%

        	  }//for문 종료하는 명령문
          }//if문 종료하는 명령문
          %>

      </table>
      <a href="/jspaction/memberform.html">새 회원 등록하기</a>
</body>
</html>