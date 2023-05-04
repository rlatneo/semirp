<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
<title>집사나라 - 아이디 찾기</title>
<style>
#top_hr{border: 20px solid rgb(26, 188, 156); opacity: 1; margin: 0;}
.foundPwd{text-align: center; width:472px; margin-left: 725px;}
#foundPwd{margin-top: -200px;}
#foundPwdLogo{width: 472px; text-align: center; display: inline;}
#foundPwdTitle{text-align: center; font-size: 24px; font-family: 'Noto Sans KR', sans-serif; font-weight: 700; margin: 10px; text-decoration: none;}
#foundPwdName{font-size: 18px; font-family: 'Noto Sans KR', sans-serif; font-weight: 400; margin: 10px; text-decoration: none; color: rgb(51, 51, 51);}
#foundPwdId{font-size: 18px; font-family: 'Noto Sans KR', sans-serif; font-weight: 400; margin: 10px; text-decoration: none; color: rgb(51, 51, 51);}
#foundPwdPhone{font-size: 18px; font-family: 'Noto Sans KR', sans-serif; font-weight: 400; margin: 10px; text-decoration: none; color: rgb(51, 51, 51);}
.foundPwdnp{text-align: left;}
#fpnBtn{margin-left: 70px; width: 300px; height: 40px; font-size: 14px; font-family: 'Noto Sans KR', sans-serif; font-weight: 300; text-decoration: none; color: rgb(94, 94, 94);}
#fpiBtn{margin-left: 54px; width: 300px; height: 40px; font-size: 14px; font-family: 'Noto Sans KR', sans-serif; font-weight: 300; text-decoration: none; color: rgb(94, 94, 94);}
#fppBtn{border: none; border-radius: 4px; margin-left: 38px; width: 130px; height: 40px; font-size: 14px; font-family: 'Noto Sans KR', sans-serif; font-weight: 300; text-decoration: none; color: rgb(94, 94, 94);}
#foundPwdNext1{box-shadow:0px 0px 15px 5px rgb(224, 224, 224); border: none; border-radius: 25px; width: 168px; height: 44px; font-size: 20px; font-family: 'Noto Sans KR', sans-serif; font-weight: 400; text-decoration: none; color: white; background: rgb(26, 188, 156);}
</style>
</head>
<body>
<hr id="top_hr">
<form> 
	<div class="foundPwd">
		<img src="resources/image/loginLogo.png" id="foundPwdLogo">
		<br><br>
		<div id="foundPwd"> 
			<a id="foundPwdTitle">비밀번호 찾기</a>
			<div class="foundPwdnp"> 
				<br><br><br><br>
				<a id="foundPwdName">이름</a>
				<input type="text" id="fpnBtn" placeholder=" 이름을 입력하세요">
				<br><br>
				<a id="foundPwdId">아이디</a>
				<input type="text" id="fpiBtn" placeholder=" 아이디를 입력하세요">
				<br><br>
				<a id="foundPwdPhone">휴대전화</a>
				<button id="fppBtn">인증하기</button>
			</div>
			<br><br><br><br><br>
			<div>
				<button type="submit" id="foundPwdNext1">다음</button>	
			</div>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br>
</form>
</body>
</html>