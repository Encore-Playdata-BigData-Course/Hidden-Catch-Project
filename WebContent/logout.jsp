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

<img src="https://media1.giphy.com/media/mWNKepaVR61rUhl4DX/source.gif" width=350>
<h2> ${id}님, 잘 가요! 또 만나요!</h2>
<%	session.invalidate();
	session = null; %>

<center> <input type='BUTTON' value="초기 화면으로 돌아가기" onclick="location.href='index.html'">
</center>
</body>
</html>