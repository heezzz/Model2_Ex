<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>core_foreach.jsp</h1>
  
  <% for(int i=0;i<5;i++){ %>
  	<h2> Hello! <%=i %> </h2>
  <% } %>
  <hr>
  
  <c:forEach begin="1" end="5" step="1">
     <h2>Hello@@</h2>
  </c:forEach>
  <hr>
  <h2> 1~10 수 중에서  홀수만 출력 </h2>
  <!-- 반복문에서 사용되는 데이터는 var 속성을 사용해서 저장가능
       출력하기 위해서는 $ { 변수명 } 
   -->
  <c:forEach var="i" begin="1" end="10" step="2">
      ${i}<br>
  </c:forEach>
  
	<!-- 문자데이터를 토큰(구분자)사용하여 데이터를 파싱  -->  
  <c:forTokens var="data" items="a.b.c.d.e.f.g.h.i.j.k" delims=",">
       ${data}<br>       
  </c:forTokens>
  
  <%
     ArrayList arr = new ArrayList();
     arr.add(1);
     arr.add(2);
     arr.add(3);
     arr.add(4);
     
     
     for(int i=0;i<arr.size();i++){
    	 System.out.println( arr.get(i) );
     }
     
     for(Object c :arr){
		System.out.println(c);    	 
     }
     
  %>
  <c:forEach var="i" items="<%=arr %>" >
      ${i}<br>
  </c:forEach>
  <hr>
  
  <c:set var="memberList" value="<%=arr %>" />
  <c:forEach var="member" items="${memberList }">
  	  ${member }   
  </c:forEach>
  
  
  
  
  
  
  
   
   
  
  
  
  
</body>
</html>