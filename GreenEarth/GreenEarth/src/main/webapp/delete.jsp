<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script> function check(){ 
	if(document.form_del.pw.value==""){ 
		alert('입력 값을 확인하세요.'); 
		return; 
    } 
	if(document.form_del.repw.value==""){ 
		alert('입력 값을 확인하세요.'); 
		return; 
    } 
	if(document.form_del.repw.value != document.form_del.pw.value){ 
		alert('입력한 패스워드가 다릅니다.'); 
		return; 
    } 
	if(confirm('탈퇴하시겠습니까?')) { 
		document.form_del.action = 'member_delete.jsp'; 
		document.form_del.submit(); 
    } 
} 
</script>

</head>
<body>
	<h2>회원 탈퇴</h2> 
	<form method="post" name="form_del"> 
	아이디:<%=session.getAttribute("id") %><br> 
	패스워드:<input type="password"name="pw"><br> 
	패스워드 확인:<input type="password"name="repw"><br> 
	<input type="button" value="탈퇴" onclick="check();"> 
	<input type="button" value="취소" onclick="location.href='home.jsp';"> 
	</form>
</body>
</html>