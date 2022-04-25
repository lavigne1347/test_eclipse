<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<link href="./resource/css/bootstrap.min.css" rel="stylesheet" />
<head>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">GreenEarth</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarColor03" aria-controls="navbarColor03"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor03">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link active" href="home.jsp">Home
						<span class="visually-hidden">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
				<li class="nav-link"><a class="nav-link"href="logout.jsp">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link" href="member.jsp">회원가입</a></li>
				<li class="nav-item"><a class="nav-link" href="list.jsp">회원 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="update.jsp">회원 수정</a></li> 
				<li class="nav-item"><a class="nav-link" href="delete.jsp">회원 삭제</a></li>

				<li class="nav-item"><a class="nav-link" href="#">게시판</a></li>
			</ul>
			<form class="d-flex">
				<input class="form-control me-sm-2" type="text" placeholder="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</div>
</nav>


</head>
</html>