<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서버에서 json데이터 전송</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"> 
 $(function(){
	
	 $('#btnjson').click(function(){
		 $.ajax({
			 type:"post",
		     async: false,
		     url: "${contextPath}/json2",
		     success: function(data,textStatus){
		    	 let jsonInfo=JSON.parse(data);
		    	 let memberInfo="<h2>** 회원정보 **</h2>"
		         for(let i in jsonInfo.members){
		        	 memberInfo+="이름: " + jsonInfo.members[i].name +"<br>";
		        	 memberInfo+="나이: " + jsonInfo.members[i].age +"<br>";
		        	 memberInfo+="성별: " + jsonInfo.members[i].gender +"<br>";
		        	 memberInfo+="별명: " + jsonInfo.members[i].nickname +"<br>";
		         }
		    	 $('#output').html(memberInfo);
		     },
		     error: function(){
		    	 alert("서버에서 데이터 받는 중 에러!!");
		     }
		  });
		 });
	 }); 

</script>
</head>
<body>
    <button id="btnjson">회원정보 수신하기</button>
    <div id="output"></div>
  </body>
</html>