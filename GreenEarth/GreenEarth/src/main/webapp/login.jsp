<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="member.vo.Member"%> 
<%@page import="member.controller.MemberStorage"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>Login</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<% String id = (String)session.getAttribute("id"); 
	    if(id == null){ 
	%>
    <form action="login_check.jsp" method="post"> 
      <input type="text" name="id" placeholder="아이디"><br> 
      <input type="password" name="pw" placeholder="비밀번호"><br> 
      <input type="submit" value="로그인"> 
      <input type="button" value="취소" onclick="javascript:location.href='home.jsp'"> 
    </form>
    

	
	<%    } else{ %> 
				  <%=id %>님 로그인 되셨습니다.<br> 
				  <a href="home.jsp">메인 페이지로 이동</a> 
    <%} %>

		
</body>
</html>