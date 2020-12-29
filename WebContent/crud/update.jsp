<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hiddencatch.model.dto.ClientDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


<html>
<head>
<title>개인 정보 수정</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
</head>
<!-- Navigation (Stays on Top) -->
<div class="navi" style= font-color:gray>
    <p style="text-align:right;"> <a href="controller?command=update" class="id"><i class="fa fa-gamepad" style="font-size:30px;color:grey;"></i>${id}</a> is gaming!  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa fa-sign-out" style="font-size:30px;color:grey;"></i><a href="controller?command=logout" class="logout">logout</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br> </p>
</div>
<body bgcolor="lightgray" >
<br>
<center>   
<img src="https://media0.giphy.com/media/kfj4cOQ4jk4D2kzz04/source.gif" width=200><br>
<h3>개인 정보 수정하기</h3>
<br>

<form action="controller?command=updatesuccess" method="post">
	  <!-- update Form  -->	
	  <table border="1" cellspacing="1" >
		  <tr>
			<td>사용자 아이디</td>
			<td>${id}</td>
	
	<tr><td>비밀번호 수정</td>	<td><input type="password" name="newPw" value="${pw}">
		</td>
	</table>  
	<p/>

	<%-- hidden tag완성 하세요
			 value값으로 설정해야 하는 값은? 
	--%>
	<input type="submit" value="수정"> &nbsp;
	<input type="button" value="탈퇴" Onclick="location.href='controller?command=delete'">&nbsp;
	<input type="reset" value="취소">&nbsp;
	<input type="button" value="게임화면으로" Onclick="location.href='controller?command=main'">
</form>

</body>
</html>
