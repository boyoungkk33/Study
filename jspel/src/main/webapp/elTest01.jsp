<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><%-- ${}작성하기 위해 필요함--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어</title>
</head>
<body>
    <h2>표현 언어로 여러가지 형태의 데이터 출력</h2>
    <h2>숫자값=${500}<br>
        홍길동님${"안녕하세요"}<br>
        연산=>${20+50}<br>
        불=>${false}<br>
        실수값=>${5.3}<br>
        연산 결과는 ${"10"+1}<br> <%--+는 연결연산자 의미 없고 산술연산자로 사용  (표현언어 밖에 작성가능)--%>
        <%--숫자문자=>${"철수"+20}<br>
        문자연결=>${"철수" + "안녕"} --%>
    </h2>
</body>
</html>