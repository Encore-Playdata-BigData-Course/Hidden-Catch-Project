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
<br><br>
<center>
<c:if test="${not empty sessionScope.result}">

<hr style="border: solid 10px gray; width: 30%" >
<br>
${sessionScope.id}님의 게임 결과는?!<br>${sessionScope.result}점입니다!
<br>
<br>
<hr style="border: solid 10px gray; width: 30%" >
</c:if>
<br>
<h3>게임 선택</h3><br>
<img src="images/1_original.png" width=150 style="border:5px solid black">&nbsp;&nbsp;<img src="images/2_original.png" width=150  style="border:5px solid black">&nbsp;&nbsp;<img src="images/3_original.png" width=150  style="border:5px solid black"><br>
<button onclick="location.href='controller?command=game&gamenumber=1'" style="WIDTH:154px;" ><h3>game1</h3></button>&nbsp;&nbsp;
<button onclick="location.href='controller?command=game&gamenumber=2'" style="WIDTH:154px;"><h3>game2</h3></button>&nbsp;&nbsp;
<button onclick="location.href='controller?command=game&gamenumber=3'" style="WIDTH:154px;"><h3>game3</h3></button>
</center>
</body>
</html>