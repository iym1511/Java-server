<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP로 만든 페이지</h1>
	<p>JSP는 자바와 html을 함께 쓰기위한 언어이다</p>
	<% String name = "홍길동"; %>
	<p>자바로 작성한 변수에 들어가 있는 이름은 <%=name %></p>
</body>
</html>