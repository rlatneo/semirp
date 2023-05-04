<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;700&display=swap" rel="stylesheet">
<title>top</title>
<style>
.menu1:hover:not(.active){color: rgb(51, 51, 51);}

.btjipsa{width: 138px; height: 58px; background: rgb(26, 188, 156); border-style: none; border-radius: 4px;}
.topCont{width: 1200px; max-width: none !important; margin: 0 auto;}
.logo{width: 160px;}
.menu1{font-size: 23px; font-family: 'Noto Sans KR', sans-serif; font-weight: 700; margin: 10px; color: rgb(51, 51, 51); text-decoration: none;}
.menu2{font-size: 23px; font-family: 'Noto Sans KR', sans-serif; font-weight: 700; margin: 10px; color: white;}
.topLeft{margin-left: 5%; display: inline;}
.topRight{margin-left: 15%; display: inline;}
#top_hr{border: 20px solid rgb(26, 188, 156); opacity: 1; margin: 0;}
#top_hr2{border: 1px solid gray;}
</style>
</head>
<body>
<header> 
	<hr id="top_hr">
	<br>
	<div>
	<div class="topCont"> 
		<div class="topLeft" style="color: inherit;">
	    	<a class="menu1"><img src="resources/image/logo.png" alt="logo" class="logo"></a>
		    <a class="menu1">집사매칭</a>
		    <a class="menu1">이용후기</a>
		    <a class="menu1">고객센터</a>
		</div>
		<div class="topRight">    
		    <a class="menu1" href="login.me">로그인</a>
		    <a class="menu1">회원가입</a>
			<button class="btjipsa menu2" type="submit">집사 지원</button>
		</div>
	</div>
	</div>
	<hr id="top_hr2">
</header>
</body>
</html>