<%@page import="member.vo.Member"%> 
<%@page import="member.controller.MemberStorage"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<% 
	request.setCharacterEncoding("utf-8"); 
     // 1. 로그인 여부 확인하기.(login.jsp) 
     String id = (String)session.getAttribute("id"); 
     if(id == null) { 
%>          <script> 
                     alert('로그인 후에 이용하세요.'); 
                     location.href='login.jsp'; 
           </script> 
<%   } 
   String pw = request.getParameter("pw"); 
   String name = request.getParameter("name"); 
   String email = request.getParameter("email"); 
//2. 동일한 아이디의 Member Class를 MemberStorage에 업데이트 시켜주세요. 
// - MemberStorage 내부의 update 메소드를 호출해서 수정 될 수 있도록 코드를 작성해주세요. 
   MemberStorage ms = new MemberStorage(); 
   Member m = ms.selectId(id); 
   if(m != null && m.getId().equals(id)){ 
	   m.setPw(pw); m.setEmail(email); 
	   m.setName(name); 
	   ms.update(m); 
// 3. 정상적으로 수정이 완료되면 index.jsp 로 이동시켜주세요. 
%>   <script> 
          alert('회원 정보 수정 완료'); 
          location.href='logout.jsp'; 
     </script>
<% }else{ 
%> 
     <script> 
     alert('회원가입 후에 이용하세요.'); 
     location.href='member.jsp'; 
     </script> 
<% 
    } 
%>

