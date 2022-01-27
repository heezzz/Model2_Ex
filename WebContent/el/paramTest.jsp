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
	<h1>/el/paramTest.jsp</h1>
	<%
	   // 한글처리
	   request.setCharacterEncoding("UTF-8");
	   // paramTest.html 페이지에서 전달된 정보 저장후 출력
	   String name = request.getParameter("name");
	   out.print(name);
	%>
	   <%=name %><hr>
	<hr>
	<h2> EL 표현식 </h2>
	이름 : ${param.name } <br>   
	이메일 : ${param.email } <br>
	취미 : ${paramValues.hobby[0] }<br>
	취미 : ${paramValues.hobby[1] }<br>
	취미 : ${paramValues.hobby[2] }<br>
	<h3>
	   EL 표현식은 jsp 반복문 사용 X 
	    =>JSTL-forEach를 사용해서 반복 O
	</h3>
	
	<c:forEach var="h" items="${paramValues.hobby }">
	     취미 : ${h } <br>
	</c:forEach>
	
	<hr>
	<h2> EL 표현식 연산자 (p516~517)</h2>
	<!-- 전달된 숫자 2개 화면 출력 -->
	<h3> el표현식으로 전달되는 파라미터는 자동 형변환 </h3>
	num1 : ${param.num1 }<br>
	num2 : ${param.num2 }<br>
	
	num1+100 : ${param.num1 +100}<br>
	
	num1 + num2 = ${param.num1 }+${param.num2 }<br>
 				   <%-- <%= %> + <%= %> --%>
	num1 + num2 = ${param.num1 + param.num2 }<br>
	
	num1,num2값 모두가 양수 인지 판단
	${ param.num1 > 0 && param.num2 >0 }<br>
	
	num1,num2 값을 비교해서 같은경우  "같음", "다름"<br>
	${ (param.num1 == param.num2)? "같음":"다름" }
		
	
	
	
	   
	   



</body>
</html>