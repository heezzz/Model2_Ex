<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>ArrayTest.jsp</h1>
  
  <h2> 전달된  DTO 객체 정보 </h2>
   아이디 :  ${dto.id }<br>
   비밀번호 : ${dto.pw }<br>
   
   <hr>
   <h2> 배열 정보 </h2>
   ${strArr[0] },${strArr[1] },${strArr[2] },${strArr[3] } <br>
   <!-- el 표현식은 반복문 for문과 사용 불가 (JSTL-foreach문) -->
   
   <c:forEach var="arr" items="${strArr}">
   		${arr },
   </c:forEach>
   
   <hr>
   ${arrlist[0] },${arrlist[1] }
  
  
  
  
</body>
</html>