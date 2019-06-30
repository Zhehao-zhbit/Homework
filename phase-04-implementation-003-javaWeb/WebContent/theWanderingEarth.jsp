<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic002.jpg);
	background-color: #000000;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1800px',
			top : '1000px'
		}, 12000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/001.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/001.mp3"
		preload="auto"></audio>
	<span id="secondline" style="font-size: 26px; color: white;position:absolute;left:110px; top:110px">当太阳系已经不再适合人类居住的时候，苟且或者逃亡便成了一种抉择，而这种逃亡就叫做“<span
		style="font-size: 38px; color: red">流浪地球</span>”只为了给为了给未来留下一个希望！
	</span>
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false" />
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="/static/video/movie.mp4" onended="onVideoEnd();" />
	</div>
</body>
</html>