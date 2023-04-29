<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상품 목록 리스트</title>
</head>
<body>
    <h2 align="center">상품 목록 리스트</h2>
    <table border="1" width="900" align="center">
        <tr align="center" bgcolor="lightgreen">
            <th>상품이미지</th>
            <th>상품이름</th>
            <th>선택하기</th>
        </tr>
        <c:forEach var="i" begin="0" end="3" step="1" >
            <tr align="center">
                <td width="300"><img src="../images/${i}.png" alt=""></td>
                <td width="300">이미지 이름 : 삼성${i+1}</td>
                <td width="300"><input name="chk${i}" type="checkbox"></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>