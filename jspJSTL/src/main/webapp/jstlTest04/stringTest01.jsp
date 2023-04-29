<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문자 태그</title>
</head>
<body>
   <c:set var="word" value="computer"/>
   <c:set var="str" value="mp"/>
   <h2>
      문자열의 길이 =${fn:length(word)}<br>
      문자를 대문자로 ☞ ${fn:toUpperCase(word)}<br>
      문자를 소문자    ☞ ${fn:toLowerCase(word)}<br>
      일부 문자만      ☞ ${fn:substring(word,3,6)}<br>
      문자의 위치    ☞ ${fn:indexOf(word,str) }<br>
      대체하기        ☞ ${fn:replace(word,"c","r")}<br>
      문자 찾기       ☞ ${fn:contains(word,str)}<br>
      문자 찾기       ☞ ${fn:contains(co,str)} <br>
   </h2>
</body>
</html>


