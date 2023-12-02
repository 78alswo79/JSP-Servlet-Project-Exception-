<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 익셉션 발생 시, 에러페이지로 등록한 화면을 사용하기 위해서 page디렉티브 속성의 isErrorPage 값을 'true'로 설정을 꼭 해야한다. --%>    
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러발생</title>
</head>
<body>
	요청 처리 과정에서 에러가 발생하였습니다.<br>
	빠른 시간 내에 문제를 해결하도록 하겠습니다.
	<p>
	<%-- page 디렉티브의 isErrorPage 속성값을 'true'로 지정하면, JSP페이지는 에러페이지가 되고,
	     에러페이지로 지정된 JSP는 exception 기본객체를 쓸 수 있다. --%>
	에러 타입 : <%=exception.getClass().getName() %><br>
	에러 메시지 : <b><%=exception.getMessage() %></b>
</body>
</html>
<%-- 만약 에러 페이지의 길이가 512 바이트보다 작다면,
인터넷 익스플로러는 이 페이지가 출력하는 에러 페이지를 출력하지 않고
자체적으로 제공하는 'HTTP 오류 메시지' 화면을 출력한다.
인터넷 익스플로러에서도 에러 페이지 내용을 올바르게 출력하려면
응답 결과에 이 주석과 같은 내용을 포함시켜서
에러 데이터가 512 바이트를 넘도록 해야 한다.
-->--%>
