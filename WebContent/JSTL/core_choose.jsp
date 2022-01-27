<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL의 core 라이브러리를 사용하기 위해서 taglib 등록 
     사용전 반드시 처리!
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_choose.jsp</h1>
	<!-- 속성 2개를 생성 -->
	<c:set var="num1" value="100"/>
	<c:set var="num2" value="200"/>
	
	<c:choose>
		<c:when test="${num1 > num2}">
		    num1 더 크다<br>
		</c:when>
		<c:when test="${num1 < num2 }">
		    num2 더 크다<br>
		</c:when>
		<c:otherwise>
		    그외 나머지 상황<br>
		</c:otherwise>	
	</c:choose>
	
	





</body>
</html>