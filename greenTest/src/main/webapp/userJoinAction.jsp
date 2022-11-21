<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>

<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%// java.io.PrintWriter : 자바스크립트 출력용 %>

<% // 현재 페이지는 자바를 이용하여 데이터를 DB에 넣어주는 페이지 
	// 받아온 값을 utf-8로 인코딩
	request.setCharacterEncoding("UTF-8");
	// 받아올 값을 DTO에 저장하기위해 선언
	String userID = null;
	String userPassword = null;
	
	//userID의 값을 request에서 받아와서 넣기
	if(request.getParameter("userID") !=null){
		// getParameter("userID") form에서보낸 name값으로 호출
		userID = (String) request.getParameter("userID");
	}// 
	if(request.getParameter("userPawwword") !=null){
		// getParameter("userID") form에서보낸 name값으로 호출
		userPassword = (String) request.getParameter("userPasswword");
	}if(userID == null || userPassword == null){
		//자바스크립트(alert)로 값이 emfdjrkTdma을 안내
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스에 값이 들어갔습니다')");
		script.println("location.href='./about.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	// 값이 다 들어온것을 확인후에
	// DAO를 통해서 데이터베이스에 쿼리문 작성
	UserDAO userDAO = new UserDAO();
	// result에 쿼리문을 실행하고 그 결과가 숫자값으로 들어옴 1/-1
	int result = userDAO.join(userID, userPassword);
	if(result ==1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스에 값이 들어갔습니다')");
		script.println("location.href='./about.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
%>