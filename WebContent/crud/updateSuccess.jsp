<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 변경 완료</title>
</head>
<body bgcolor="lightgray">
<body>
<center>
${id}님의 비밀번호를 ${pw}로 변경하였습니다.
<p><p>
 <input type="button" value="게임하기" Onclick="location.href='game.jsp'"> <input type="button" 
 value="초기화면으로 돌아가기" Onclick="location.href='index.html'"> 
</center>
</body>
</html>