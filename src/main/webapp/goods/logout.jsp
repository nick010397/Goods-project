<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
session.invalidate();//세션의 모든 속성 제거
response.sendRedirect("Main.html");
%>
