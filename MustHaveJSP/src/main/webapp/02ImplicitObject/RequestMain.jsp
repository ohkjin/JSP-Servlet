<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<h4>1-1. GET 방식 전송</h4>
	주소가 노출되는 대신 속도가 빠름<br/>
	<a href="./RequestWebInfo.jsp?eng=Hello&han=안녕">
		GET 방식 전송
	</a>
	<br />
	<br />
	<!-- form: 서버에서 브라우저에 보내는 정보 -->
	<h4>1-2. POST 방식 전송</h4>
	<form action="./RequestWebInfo.jsp" method="post">
		주소가 노출되지 않고 제한이 없어서 큰 파일을 보낼 시 사용<br/>
		영어 : <input type="text" name="eng" value="Bye" /><br/>
		한글 : <input type="text" name="han" value="잘 가" /><br/>
		<input type="submit" value="POST 방식 전송" />
	</form>
	
	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
	<form action="RequestParameter.jsp" method="post">
		아이디 : <input type="text" name="id" value="" /><br/>
		성별 :
		<input type="radio" name="sex" value="man" />남자
		<input type="radio" name="sex" value="woman" checked="checked" />여자
		<br/>
		관심사항 :
		<input type="checkbox" name="favo" value="eco" />경제
		<input type="checkbox" name="favo" value="pol" checked="checked" />정치<br/>
		자기소개:
		<textarea name="intro" cols="20" rows="4"></textarea>
		<br/>
		<input type="submit" value="전송" />
	</form>
	
	<h2>3. HTTP 요청 헤더 정보 읽기</h2>
	<a href="RequestHeader.jsp">
		요청 헤더 정보 읽기
	</a>
</body>
</html>