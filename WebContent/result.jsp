<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>

<!-- Navigation (Stays on Top) -->
<div class="navi" style= font-color:gray>
    <p style="text-align:right;"> <a href="controller?command=update" class="id"><i class="fa fa-gamepad" style="font-size:30px;color:grey;"></i>${id}</a> is gaming!  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa fa-sign-out" style="font-size:30px;color:grey;"></i><a href="controller?command=logout" class="logout">logout</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br> </p>
</div>
<!-- Start Content -->
<div id="gamepage" class="gamepage" style= background-color:lightgray>
&nbsp; 
<p>
<p>
<center><h3>정답을 확인하세요!</h3>
<img src = "./images/${sessionScope.gamenumber}_answer.png">
<p>
<div>

 <h3> ${id}님은 이번 게임을 ${result}점으로 클리어하셨습니다! </h3>
 <h4>	<c:choose>
		<c:when test="${result >= 13}">
			최고 점수를 경신했습니다! 대단해요!! <br>
		</c:when>
		<c:when test="${13> result && result >=10}">
			눈썰미가 대단한데요? 오늘부터 ${id}님을 매의 눈이라고 부를게요!<br>
		</c:when>
		<c:otherwise>
			아쉽군요! 한번 더 도전해보시겠어요?
		</c:otherwise>	
	</c:choose> </h4>


  
<center><h3>지금까지 이 게임을 한 사람들의 순위는...</h3>
<table border="1">
	<tr>   
		<th>아이디</th><th>점수</th><th>기록 시간</th>
	</tr>
	<c:forEach var="v" items="${sessionScope.leaderboard}">
	 <tr>
	 	<td>${v.id}</td><td>${v.score}</td><td>${v.time}</td>
	 </tr>
	</c:forEach> 
</table>
<br>
<button onclick="location.href='controller?command=main'">게임 재도전!!</button>
</body>
</html>