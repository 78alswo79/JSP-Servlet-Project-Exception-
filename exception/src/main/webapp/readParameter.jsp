<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- readParameter.jsp에서 익셉션이 발생했을 때, 보여줄 화면명. 
	 JSP는 에러 화면 대신 지정한 JSP페이지를 보여줄 수 있다. 
	 page 디렉티브의 errorPage속성을 이용한다. --%> 
<%@ page errorPage="/error/viewErrorMessage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 출력</title>
</head>
<body>
	name 파라미터 값 : <%=request.getParameter("name").toUpperCase() %>
</body>
</html>