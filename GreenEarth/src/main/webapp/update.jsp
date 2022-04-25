<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
	String id = (String)session.getAttribute("id");
    if(id = null){
%>
	<script> 
	alert('로그인 후 사용 가능합니다.'); 
	location.href='login.jsp'; 
	</script> 
<%  } 
    String name = (String)session.getAttribute("name"); 
    String email = (String)session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>회원 정보 수정</h2> 
   <form action="member_update.jsp" method="post"> 
         아이디:<%=id %><br> 
         패스워드:<input type="password" name="pw" placeholder="패스워드"><br> 
         이름:<input type="text" name="name" value=<%=name %>><br> 
         이메일:<input type="text" name="email" value=<%=email %>><br> 
         <input type="submit" value="회원 수정"> 
         <input type="button" value="취소" onclick="jsvascript:location.href='home.jsp'"> 
    </form>
</body>
</html>