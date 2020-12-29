<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hiddencatch.model.dto.ClientDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입하기</title>
</head>

<body bgcolor="lightgray" >
&nbsp;<p><p><p>
	<center>
<img src="https://media0.giphy.com/media/kfj4cOQ4jk4D2kzz04/source.gif" width=200><br>
	<h3>회원가입</h3>
	<br>
	  <!-- write Form  -->
	 <form action="../controller?join" method="post">
	 
	 <input type="hidden" name="command" value="join">
	  
	  <table border="1" cellspacing="1">
		  <tr>
			<td align=center >User ID</td>
			<td>
				<input type="text" name="id">
			</td>
		  </tr>
		  <tr>
			<td align=center >PASSWORD</td>
			<td>
				<input type="password" name="pw">
			</td>
		  </tr>
		
	  </table>
	 <br><br>
	 <input type="submit" value="가입" onclick="location.href='view.jsp'">&nbsp;
	 <input type="reset" value="리셋">&nbsp;</form>

	 <input type="button" value="초기화면으로 돌아가기" onclick="location.href='../index.html'"></center>
	 </form>	 


</body>
</html>