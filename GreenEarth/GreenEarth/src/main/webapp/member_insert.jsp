<%@page import="java.util.ArrayList"%> 
<%@page import="member.vo.Member"%> 
<%@page import="member.controller.MemberStorage"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%! int number;%> 
<% 
        request.setCharacterEncoding("utf-8"); 
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw"); 
		String name = request.getParameter("name"); 
		String email = request.getParameter("email"); 
		/* 데이터베이스를 대신해서 ArrayList에 회원정보 저장 */ 
		
		MemberStorage ms = new MemberStorage(); 
		/* 회원가입때 id 중복체크 */ 
		ArrayList<Member> memberList = ms.selectAll(); 
		for(Member m : memberList){ 
			if(m.getId().equals(id)){ 
%> 
					<script> 
					alert('다른 ID로 회원가입을 시도하시오.'); 
					location.href='member.jsp'; 
					</script>
<% 
		   return; 
		           } 
		} 
		number++; 
		Member member = new Member(number, id, pw, name, email); 
		ms.insert(member); 
%> 
		<script> 
			alert('회원가입 완료') 
			location.href = 'home.jsp'; 
		</script>

