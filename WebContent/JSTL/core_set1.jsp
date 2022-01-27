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
   <h1>core_set1.jsp</h1>
   
   <%
     // 자바코드에서만 사용가능, 현재 페이지에서만 사용가능
     int num1 = 10;
     int num2 = 44;
     int sum = num1 + num2;
     out.print(sum);   
   %>
   <hr>
   결과 : <%=sum %><br>
   
   <hr>
   <!-- 1235 -->
   <%-- <c:set var="변수명" value="데이터값"/> --%>
   
   <c:set var="num3" value="5"/>
   <c:set var="num4" value="9"/>
   <!-- num3 + num4 결과 출력 -->
   <%-- <c:out value="num3+num4"/> --%>
   <c:out value="${num3+num4}"/>
   <hr>
   <!-- 5 + 9 = 14 문장 출력 -->
   <c:out value="${num3}"></c:out> + ${num4 } = ${num3 + num4 } <br>
   
   <!-- scope 속성을 사용해서
       page,request,session,application 영역에 값을 저장가능
       
       => 생성하는 변수 c:set은 변수를 생성하는것이 아니라,
         영역객체의 속성을 생성하는 것
    -->
   <c:set var="test" value="1111"/> <!-- scope=page 생략 -->
   <c:set var="model" value="m0001" scope="request"/>
   <c:set var="color" value="blue" scope="request"/>
   <c:set var="price" value="200" scope="request"/>
   <%
      //request.setAttribute("model", "m0001");
   %>
   <h2> core_set2.jsp 페이지 이동 (액션태그) </h2>
   <jsp:forward page="core_set2.jsp"/>
   
   
   
   
   
   
   
   
   
   
   
   
</body>
</html>