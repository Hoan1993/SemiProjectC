<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="css/bootstrap-3.4.1.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<header>
		<div id="login">
			<a href="./index.html">홈</a>
			<!-- 초기페이지 -->
			<a href="<%=request.getContextPath()%>/join.do">회원가입</a> <a
				href="<%=request.getContextPath()%>/login.do">로그인</a>
		</div>
	</header>
	
		<nav class="navbar navbar-inverse">
			<div class="container_fluid">
				<div class="navbar-header">
					<button type="button" class="collapsed navbar-toggle"
						data-toggle="collapse" data-target="#nav_menu"
						aria-expaned="false">
						<span class="sr-only"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">뉴스목록</a>
				</div>
				<div class="collapse navbar-collapse" id="nav_menu" align="left">
					<ul class="nav navbar-nav">
						<li><a href="#">정치</a></li>
						<li><a href="#">경제</a></li>
						<li><a href="#">사회</a></li>
						<li><a href="#">생활/문화</a></li>
						<li><a href="#">세계</a></li>
						<li><a href="#">IT/과학</a></li>
						<li><a href="#">스포츠</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

</body>
</html>
































