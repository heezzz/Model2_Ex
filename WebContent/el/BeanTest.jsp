<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>BeanTest.jsp</h1>
  
  이름 : ${kim.name }<br>
  <%-- 휴대폰 : ${kim.phone }<br>(x) --%>
  휴대폰 : ${kim.p}<br>
  휴대폰(모델명) : ${kim.p.model}<br>
  휴대폰(컬러) : ${kim.p.color}<br>
  
  
  
</body>
</html>