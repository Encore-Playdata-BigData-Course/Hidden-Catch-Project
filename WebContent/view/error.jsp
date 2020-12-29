<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>에러 상황입니다</title>
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
<img src="https://media4.giphy.com/media/U57D8xBvTi599FwaAb/giphy-preview.gif" width=300>
<p>
<%
out.println(request.getAttribute("msg"));
%>
<br>
<p>
<p>
<p>
<p>
<button onclick="location.href='index.html'">초기 화면으로 이동</button></center>
</body>
</html>