<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>fmt_setLocale.jsp</h1>
  <h2> fmt : 포메팅 라이브러리 </h2>
  
  <fmt:setLocale value="ko_kr"/>
  <fmt:formatNumber value="100000000" type="currency"/> <br>
  <fmt:formatDate value="<%=new Date() %>" dateStyle="full"/><br>
  
  <fmt:setLocale value="en_us"/>
  <fmt:formatNumber value="100000000" type="currency"/> <br>
  <fmt:formatDate value="<%=new Date() %>" dateStyle="full"/><br>
  
  <fmt:setLocale value="ja_jp"/>
  <fmt:formatNumber value="100000000" type="currency"/> <br>
  <fmt:formatDate value="<%=new Date() %>" dateStyle="full"/><br>
  
  <hr>
  <fmt:setLocale value="ko_kr"/>
  
   숫자 : 100000000 <br>
   <fmt:formatNumber value="100000000"/><br>
   <fmt:formatNumber value="100000000" groupingUsed="true"/><br>
   <fmt:formatNumber value="100000000" groupingUsed="false"/><br>
   
   <hr>
   3.12341235 소수점 2자리까지만 표현 <br>
   <fmt:formatNumber value="<%=3.12341235%>" pattern="#.##"/> <br>
   <fmt:formatNumber value="<%=3.12341235%>" pattern="#.#####"/> <br>
   <fmt:formatNumber value="<%=3.12341235%>" pattern="#.################"/> <br>
   
   10.5 -> 10.50 형태로 출력 <br>
   <fmt:formatNumber value="10.5" pattern="#.##"/><br>
   <fmt:formatNumber value="10.5" pattern="#.00"/><br>
   
   퍼센트 정보를 계산  0.5 <br>
   <fmt:formatNumber value="0.5" type="percent"/><br>
   <fmt:formatNumber value="1.234" type="percent"/><br>
   <fmt:formatNumber value="0.657123" type="percent"/><br>
   
   <hr>
   <fmt:formatNumber value="100000000" type="currency" currencySymbol="@"/> <br>
   <hr>
   
   <h2> 날짜 정보 변경하기 </h2>
   <!-- 날짜 정보 생성 -->
   
   <c:set var="today" value="<%=new Date()%>" />
   
   기본 날짜 정보 : ${today }<br>
   
   <fmt:formatDate value="${today }"/> <br>
   <fmt:formatDate value="${today }" type="time"/> <br>
   <fmt:formatDate value="${today }" type="both"/> <br>
   <hr>
   <fmt:formatDate value="${today }" dateStyle="full"/> <br>
   <fmt:formatDate value="${today }" dateStyle="long"/> <br>
   <fmt:formatDate value="${today }" dateStyle="medium"/> <br>
   <fmt:formatDate value="${today }" dateStyle="short"/> <br>
   
    <hr>
    <fmt:formatDate value="${today }" type="time" timeStyle="full"/> <br>
    <fmt:formatDate value="${today }" type="time" timeStyle="long"/> <br>
    <fmt:formatDate value="${today }" type="time" timeStyle="medium"/> <br>
    <fmt:formatDate value="${today }" type="time" timeStyle="short"/> <br>
   
    <hr>
    
    <h3> 2022년 1월 13일(목) 오후 4시 23분 00초 </h3>
    <fmt:formatDate value="${today }" type="both" dateStyle="long"/>
    
    <hr>
    <h3> 2022/1/13(목) </h3>
    
    <fmt:formatDate value="${today }" type="date" pattern="yyyy/MM/dd(E)"/><br>
    
    <h3> (오후)04:28:00 </h3>
    <fmt:formatDate value="${today }" type="time" pattern="(a)hh:mm:ss"/><br>
    
    
   
   
  
  
  
  
  
  

</body>
</html>