<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>core_if.jsp</h1>
   
   <c:set var="tmp" value="test1234"/>
   
   <c:if test="${ tmp == 'test1234' }">
       <h3> 정답입니다! </h3>
   </c:if>
   
   <%
      int num = 100;
      if(num == 100){
    	  %>
    	   <h3> 정답입니다! </h3>
    	  <%
      }
   %>
   <hr>
   <!-- action 속성이 없는 경우 자신의 페이지 호출 -->
   <form action="">
      숫자1 : <input type="text" name="num1"> <br>
      숫자2 : <input type="text" name="num2"> <br>
      <input type="submit" value="전송">  
   </form>
   
   <%
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
     if(num1 !=null && num2 != null){
      int Inum1 = Integer.parseInt(num1);
      int Inum2 = Integer.parseInt(num2);
      
      if(Inum1 > Inum2){
    	  %>
    	    num1 값이 더크다!<br>
    	  <%
      }else{
    	  %>
    	    num2 값이 더크다!<br>
    	  <%
      }
     }
   %>
   <hr>
   
   <h3> JSTL/EL 표현식 사용 </h3>
   
   <c:if test="${param.num1 gt param.num2 }">
       num1 더 크다!!!<br>
   </c:if>
   
   <c:if test="${param.num1 lt param.num2 }">
   		num2 더 크다!!!<br>
   </c:if>
   
   <hr>
   
   <c:if test="${param.num1 eq param.num2}">
       두개의 데이터는 동일합니다.<br>
   </c:if>
   <!--  el표현식 - 비교연산자 
      eq : ==
      ne : !=
      lt : <
      gt : >
      le : <=
      ge : >=
    -->
   
   
   
   
   
   
   
</body>
</html>