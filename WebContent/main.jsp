<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
<!-- Navigation (Stays on Top) -->
<div class="navi" style= font-color:gray>
    <p style="text-align:right;"> <a href="controller?command=update" class="id"><i class="fa fa-gamepad" style="font-size:30px;color:grey;"></i>${id}</a> is gaming!  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa fa-sign-out" style="font-size:30px;color:grey;"></i><a href="controller?command=logout" class="logout">logout</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br> </p>
</div>
<br><br><br><br><br>
<center>
<c:if test="${not empty sessionScope.result}">
${sessionScope.id}님의 게임 결과는?!<br>${sessionScope.result}점입니다!
</c:if>

<br><br><br><br>
게임 선택<br>
<button onclick="location.href='controller?command=game&gamenumber=1'">game1</button>
<button onclick="location.href='controller?command=game&gamenumber=2'">game2</button>
<button onclick="location.href='controller?command=game&gamenumber=3'">game3</button>
</center>
</body>
</html>