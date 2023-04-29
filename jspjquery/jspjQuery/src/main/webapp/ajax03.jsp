<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서버로 json데이터 전송</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"> 
 $(function(){
	 var _jsonInfo='{"name":"박지성","age":42,"gender":"남성", "nickname":"날센돌이"}';
	 $('#btnjson').click(function(){
		 $.ajax({
			  type:"post",
			  async:false,
			  url:"${contextPath}/json",
			  data:{jsonInfo: _jsonInfo},
			  success: function(data,textStatus){
				  
			  },
			  error: function(){
				  alert("서버로 통신중 에러!!")
			  }
		 });
	 }); 
 });
</script>
</head>
<body>
    <button id="btnjson" onclick="fn_json()">회원정보 전송 </button>
</body>
</html>