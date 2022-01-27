<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>AttributeTest.jsp</h1>
   
   <%
   		int cnt = 1000;
   
        pageContext.setAttribute("cnt", 5000);
   %>
   
   cnt (변수): <%=cnt %><br>
   cnt+100 (변수): <%=cnt+100 %><br>
   <hr>
   cnt : ${cnt }<br>
   cnt : ${pageScope.cnt }<br>
   
   <hr>
   <h3> 영역객체의 범위 </h3>
    page >>> request >>> session >>> application <br>
    
    해당 영역에 접근하기 위해서는 영역객체 정보가 필요함.
    영역객체정보를 생략가능
    (영역을 순차적으로 탐색-영역의 크기가 적은곳에서 큰곳으로)
    동일한 이름의 속성을 만날경우 다음 영역에서의 탐색 X    
    - 다른 영역에 동일한 이름의 속성을 사용하지 X(권장)
    
   <hr>
   cnt(서블릿) : ${ cnt } <br>
   cnt(서블릿 - requestScope) : ${ requestScope.cnt } <br>
   
   <hr>
   cnt (서블릿 - sessionScope) : ${ sessionScope.cnt }  <br>
      
   
   
   
   
   
</body>
</html>
