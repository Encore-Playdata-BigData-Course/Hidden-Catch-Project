<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계정 삭제</title>
</head>
<body bgcolor="lightgray">
<body>
<center>
${id}님의 계정이 삭제되었습니다.
<%	session.invalidate();
	session = null; %>
		${id} ${pw} ${result}
	
<p><p>
 <input type="button" value="초기화면으로 돌아가기" Onclick="location.href='index.html'"> 
</center>
</body>
</html>