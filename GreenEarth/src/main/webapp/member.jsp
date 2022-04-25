<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원가입</h2> 
	<form action="member_insert.jsp" method="post"> 
		<input type="text" name="id" placeholder="아이디"><br> 
		<input type="password" name="pw" placeholder="패스워드"><br> 
		<input type="text" name="name" placeholder="이름"><br> 
		<input type="text" name="email" placeholder="이메일"><br> 
		<input type="submit" value="회원가입"> 
		<input type="button" value="취소" onclick="jsvascript:location.href='index.jsp'"> 
    </form>
</body>
</html>