<%@page import="member.vo.Member"%> 
<%@page import="member.controller.MemberStorage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8"); 
    String id = request.getParameter("id"); 
    String pw = request.getParameter("pw"); 
    
    MemberStorage ms = new MemberStorage(); 
    Member m = ms.selectId(id); 
    if(m != null && id.equals(m.getId()) && pw.equals(m.getPw())){ 
    	session.setAttribute("id", id); 
    	session.setAttribute("pw", pw); 
    	session.setAttribute("name", m.getName()); 
    	session.setAttribute("email", m.getEmail()); 
%>
        <script> 
        alert('로그인 성공'); 
        location.href='home.jsp'; 
        </script> 
<% }else{ 
%>      <script> 
        alert('아이디 또는 패스워드를 확인하세요.'); 
        location.href='login.jsp'; 
        </script> 
<% } 
%>

