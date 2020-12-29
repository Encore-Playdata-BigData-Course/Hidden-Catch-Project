<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<!-- Navigation (Stays on Top) -->
<div class="navi" style= font-color:gray>
    <p style="text-align:right;"> <a href="controller?command=update" class="id"><i class="fa fa-gamepad" 
    style="font-size:30px;color:grey;"></i>${id}</a> is gaming!  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa fa-sign-out" style="font-size:30px;color:grey;"></i><a href="controller?command=logout" 
class="logout">logout</a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br> </p>
</div>
<!-- Start Content -->
<div id="gamepage" class="gamepage" style= background-color:lightgray>

&nbsp; 
<p>
<p>
<center><h3>두 개의 그림을 보고 서로 다른 3군데를 찾아서 오른쪽 사진에 클릭하세요.</h3>

<img src="images/2_original.png" alt="level2_original"; float:left; margin-right:2px;>
<img src="images/2_quiz.png" alt="level2_quiz" usemap="#hiddencatch2"></center>
<map id="hiddencatch2" name="hiddencatch2">
<area shape="rect" onfocus='blur()' coords="0,0,61,199" href="#right2" onclick="open('./gamepopup.jsp','','width=50, height=10,left=550,top=300')"	 />
<area shape="rect" onfocus='blur()' coords="60,0,121,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,0,160,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,0,200,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,0,240,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,0,400,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,0,440,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,0,480,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,0,520,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,0,560,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,0,600,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,0,640,40" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="64,41,121,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,41,160,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,41,200,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,41,240,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,41,400,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,41,440,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,41,480,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,41,520,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,41,560,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,41,600,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,41,640,80" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="68,82,120,121" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,81,160,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,81,200,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,81,240,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,2,363,121" href="#right1" onclick="open('./gamepopup.jsp','','width=50, height=10,left=550,top=300')" />
<area shape="rect" onfocus='blur()' coords="361,81,400,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,81,457,135" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,81,480,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,81,520,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,81,560,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,81,600,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,81,640,120" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="63,121,121,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,121,160,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,121,200,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,121,240,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,121,280,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,121,320,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,121,360,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,121,400,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,121,440,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,121,480,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,121,520,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,121,560,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,121,600,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,121,640,160" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="64,161,121,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,161,160,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,161,200,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,161,240,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,161,280,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,161,320,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,161,360,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,161,400,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,161,440,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,161,480,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,161,520,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,161,560,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,161,600,200" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,161,640,200" href="#right3" onclick="open('./gamepopup.jsp','','width=50, height=10,left=550,top=300')" />
<area shape="rect" onfocus='blur()' coords="0,201,40,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,201,80,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,201,120,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,201,160,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,201,200,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,201,240,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,201,280,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,201,320,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,201,360,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,201,400,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,201,440,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,201,480,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,201,520,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,201,560,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,201,600,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,201,640,240" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,241,40,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,241,80,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,241,120,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,241,160,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,241,200,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,241,240,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,241,280,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,241,320,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,241,360,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,241,400,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,241,440,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,241,480,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,241,520,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,241,560,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,241,600,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,241,640,280" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,281,40,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,281,80,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,281,120,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,281,160,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,281,200,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,281,240,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,281,280,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,281,320,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,281,360,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,281,400,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,281,440,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,281,480,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,281,520,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,281,560,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,281,600,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,281,640,320" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,321,40,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,321,80,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,321,120,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,321,160,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,321,200,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,321,240,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,321,280,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,321,320,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,321,360,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,321,400,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,321,440,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,321,480,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,321,520,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,321,560,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,321,600,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,321,640,360" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,361,40,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,361,80,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,361,120,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,361,160,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,361,200,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,361,240,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,361,280,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,361,320,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,361,360,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,361,400,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,361,440,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,361,480,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,361,520,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,361,560,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,361,600,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,361,640,400" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,401,40,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,401,80,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,401,120,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,401,160,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,401,200,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,401,240,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,401,280,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,401,320,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,401,360,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,401,400,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,401,440,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,401,480,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,401,520,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,401,560,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,401,600,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,401,640,440" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,441,40,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,441,80,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,441,120,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,441,160,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,441,200,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,441,240,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,441,280,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,441,320,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,441,360,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,441,400,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,441,440,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,441,480,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,441,520,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,441,560,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,441,600,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,441,640,480" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,481,40,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,481,80,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,481,120,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,481,160,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,481,200,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,481,240,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,481,280,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,481,320,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,481,360,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,481,400,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,481,440,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,481,480,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,481,520,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,481,560,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,481,600,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,481,640,520" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,521,40,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,521,80,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,521,120,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,521,160,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,521,200,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,521,240,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,521,280,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,521,320,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,521,360,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,521,400,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,521,440,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,521,480,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,521,520,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,521,560,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,521,600,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,521,640,560" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,561,40,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,561,80,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,561,120,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,561,160,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,561,200,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,561,240,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,561,280,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,561,320,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,561,360,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,561,400,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,561,440,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,561,480,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,561,520,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,561,560,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,561,600,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,561,640,600" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="0,601,40,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="41,601,80,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="81,601,120,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="121,601,160,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="161,601,200,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="201,601,240,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="241,601,280,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="281,601,320,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="321,601,360,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="361,601,400,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="401,601,440,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="441,601,480,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="481,601,520,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="521,601,560,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="561,601,600,640" href="#wrong" />
<area shape="rect" onfocus='blur()' coords="601,601,640,640" href="#wrong" />
</map>

<p>
<p>

<!-- 고정해서 넘기는 버전  --!>
<% session.setAttribute("result", "9"); %> 
 <center><button onclick="location.href='controller?command=main'"></h3>처음으로</h3></button> 
 		<button onclick="location.href='controller?command=gameover'"><h3>게임 끝</h3></button> </center>


</body>
<!--  반응형 이미지맵 구현 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<script>
(function($){
$(document).ready(function(e) {
$('img[usemap]').rwdImageMaps();
});
})(jQuery);
</script>
</html>