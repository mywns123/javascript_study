<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	
	StringBuilder sb = new StringBuilder("{");
	sb.append(String.format("\"userId\":\"%s\"", userId));
	sb.append(", ");
	sb.append(String.format("\"userPwd\":\"%s\"", userPwd));
	sb.append("}");
	
	out.print(sb.toString());	
	System.out.println(sb);
%>
