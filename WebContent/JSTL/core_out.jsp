<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL의 core 라이브러리를 사용하기 위해서 taglib 등록 
     사용전 반드시 처리!
--> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>core_out.jsp</h1>

  <!-- out.print(), jsp 표현식을 대신해서 사용, EL표현식 사용가능  -->  
  <c:out value="안녕하세요!!!"></c:out>
  
  안녕하세요@@@
  
  <%="안녕하세요 ###" %>
  <% 
     out.print("안녕하세요 $$$");
  %>
  
  <c:out value="${ 2*10 }"/>
  <hr>
  
  <!-- null값을 공백문자로 출력가능  -->
  <%-- <%=member.getMember("id") %> --%>
  @@@<c:out value="${member.getmember('id') }"/>@@@ <br>
  <c:out value="${member.gender }" default="Null값을 대신해서 출력 가능!"></c:out>
  
  <hr><hr>
  
  <abc>는 abc태그 입니다. <br>
  
  &lt;abc>는 abc태그 입니다. <br>
  
  <c:out value="<abc>는 abc태그 입니다."/>
  
  
  
  
</body>
</html>