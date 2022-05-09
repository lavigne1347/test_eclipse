<%@ page contentType="text/html; charset=utf-8"%>

<%
	session.invalidate();
// 	response.sendRedirect(".jsp");
%>
<script> 
    alert('로그아웃'); 
    location.href="home.jsp"; 
</script>

