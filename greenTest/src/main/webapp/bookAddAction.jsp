<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="book.BookDTO" %>
<%@ page import="book.BookDAO" %>
<%@ page import="java.io.PrintWriter" %>

<% // java.io.PrintWriter : 자바스크립트 출력용 %>
<% // 현재 페이지는 자바를 이용하여 데이터를 DB에 넣어주는 페이지
	// 받아온 값을 utf-8로 인코딩
	request.setCharacterEncoding("UTF-8");
	// 받아올 값을 DTO에 저장하기위해 선언
	String title = null;
	int count = 0;
	

	if(request.getParameter("title") !=null) {
		title = (String) request.getParameter("title");
	}
	if(request.getParameter("count") !=null) {
		// 문자열을 숫자로 바꾸기 위해 parseInt 사용
		count = Integer.parseInt(request.getParameter("count"));
	}
	
	if(title ==null || count == 0) {
		// 값이 다 들어오지않았을때 뒤로가기
		PrintWriter script = response.getWriter();
		script.println("<script>"); 
		script.println("alert('입력이 안된 사항이있습니다');");
		script.println("history.back();"); 
		script.println("</script>"); 
		script.close();
		return;
	}
	
	// 값이 다 들어온것을 확인 후에 
	// DAO를 통해서 데이터베이스에 쿼리문 작성
	BookDAO bookDAO = new BookDAO();
	// result에 쿼리문을 실행하고 그 결과가 숫자값으로 들어옴 1/-1
	int result = bookDAO.join(title, count);
	if (result == 1) {
		// 자바스트립트(alert)로 값이 들어갔음을 안내
		PrintWriter script = response.getWriter();
		script.println("<script>"); 
		script.println("alert('데이터베이스에 book값이 들어갔습니다');");
		script.println("location.href='index.html'"); 
		script.println("</script>"); 
		script.close();
		return;
	}
	
	
	
	
	
%>