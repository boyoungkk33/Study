<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*, jspEL.ex01.*"%>
     <jsp:useBean id="memBean" class="jspEL.ex01.MemberBean" scope="page"/>
     <jsp:useBean id="list"    class="java.util.ArrayList" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어</title>
</head>
<body>
    <h2>표현언어의 empty연산자</h2>
    <h2>
        MemberBean 객체 설정 => ${empty memBean}</br>
        MemberBean 객체 설정 => ${not empty memBean}</br>
        ArrayList  객체 설정 => ${empty list}</br>
        ArrayList  객체 설정 => ${not empty list}</br>
  </h2>
</body>
</html>