<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>core_set2.jsp</h1>
   <!-- 전달해준 정보를 저장해서 화면에 출력 -->
   <%
 		//request.setAttribute("model", "m0001");
   		String model = (String)request.getAttribute("model");
   %>
   <%= model %><hr>
   
   <h2>set1.jsp 페이지에서 전달한 데이터</h2>
   모델명 : ${ requestScope.model }<br>
   색상 : ${requestScope.color }<br>
   가격 : ${ price } <br>
   => 영역정보는 생략가능 (page ->request ->session ->application)
   
   <hr><hr>
   
   <h2> 서블릿을 사용한 영역객체 정보 전달 </h2>
   값 : ${itwill } <br>
   
   <hr>
   <h3> 객체 정보 출력 </h3>
   값 : ${MemberDTO }<br>
   값 : ${requestScope.MemberDTO }<br>
   아이디 : ${ MemberDTO.id }<br>
   이메일 : ${ MemberDTO.email }<br>
   주소 : ${ MemberDTO.addr }<br>
   이름 : ${ requestScope.MemberDTO.name }<br>
   
   
   <hr>
   <hr> 
   <h3>객체 정보 출력 (Vector)</h3>
   ${requestScope.vec }<br>
   이메일 : ${requestScope.vec[0].email }<br>
   		   <!--  [MemberDTO] -->
   	<c:set value="${requestScope.vec[0] }" var="v0"/>
   	
   이메일 : ${v0.email }<br>	   
   
   <hr>
   <c:remove var="model" scope="request"/>
   모델명 : ${ requestScope.model }<br>
   색상 : ${requestScope.color }<br>
   가격 : ${ price } <br>
   
   
   

</body>
</html>