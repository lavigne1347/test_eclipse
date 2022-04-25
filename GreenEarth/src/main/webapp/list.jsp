<%@page import="member.vo.Member"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="member.controller.MemberStorage"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
  <% 
		MemberStorage ms = new MemberStorage(); 
		ArrayList<Member> memberList = ms.selectAll(); 
   %> 
<!DOCTYPE html>
<html> 
<head> 
<meta charset="UTF-8"> 
<title>list.jsp 페이지</title> 
</head> 
<body> 
	<h2>회원 목록</h2> 
	<table border="1"> 
		<tr> 
			<td><strong>Number</strong></td> 
			<td><strong>ID</strong></td> 
			<td><strong>PASSWORD</strong></td> 
			<td><strong>NAME</strong></td> 
			<td><strong>EMAIL</strong></td> 
		</tr> 
		<% 
		     int count = 0; 
		     if(memberList.isEmpty() == false){//데이터가 들어있어? 
		    		 for(Member m : memberList){ 
		    			 count++; 
		    			 int number = m.getNumber(); 
		    			 String id = m.getId(); 
		    			 String pw = m.getPw(); 
		    			 String name = m.getName(); 
		    			 String email = m.getEmail(); 
		 %> 
		 <tr> 
		      <td><%=number %></td> 
		      <td><%=id %></td> 
		      <td><%=pw %></td> 
		      <td><%=name %></td> 
		      <td><%=email %></td> 
		 </tr> 
		<%          }
		     }
		%>
		 </table> 
		 total record <%=count %><br>
		 <a href="home.jsp">메인 페이지로 이동하기</a> 
</body> 
</html>

