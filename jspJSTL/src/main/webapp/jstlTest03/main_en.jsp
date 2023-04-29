<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다국어페이지 </title>
</head>
<body>
<a href="main_ko.jsp">korean</a><a href="main_en.jsp">english</a>
  <fmt:setlocal value="en_US"/>
  <fmt:bundle basename="resource.main">
    <h1><fmt:message key="mem.title"/></h1>
    <h2><fmt:message key="mem.name"/></h2>
    <h2><fmt:message key="mem.address"/></h2>
    <h2><fmt:message key="mem.job"/></h2>
  </fmt:bundle>
</body>
</html>