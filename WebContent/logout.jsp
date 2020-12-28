<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>logout</title>
</head>
<body bgcolor="lightgray" text="black">
&nbsp;
<p>
<p>
<p>
<p>
<p>
<p>
<p>
<p>
<center>
	${id}님, 잘 가요! 또 만나요!
	
<%	session.invalidate();
	session = null; %>
	
	<p><p>
<center> <input type='BUTTON' value="초기 화면으로 돌아가기" onclick="location.href='index.html'">
</center>
</body>
</html>