<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/login_button.css">
<link rel="stylesheet" type="text/css" href="../css/login.css?v=0.6">
<script type="text/javascript" src="../script/loginScript.js"></script>
</head>
<body>
	<!-- 로그인 화면 -->
	<div class="div">
		<!-- submit을 클릭했을경우 logIn.jsp로 이동 -->
		<form action="../login/logIn.do" method="post" name="loginForm">
			<table align="center" id="login_Form_table">
				<tr>
					<td class="login_table_td">ID</td>
					<td class="login_table_td">
						<input class="input" type="text" name="memid" required="required">
					</td>
				</tr>
				<tr>
					<td class="login_table_td">Password</td>
					<td class="login_table_td">
						<input class="input" type="password" name="pw" required="required">
					</td>
				</tr>
			</table>
			
			<!--  -->
			<div class="button">
				<button type="submit" id="button">로그인</button> 
				<button type="button" id="button" onclick="location.href='../login/joinForm.do'">회원가입</button>
				<button type="submit" id="button" formaction="../login/deleteForm.do">회원탈퇴</button>
			</div>
		</form>
	</div>
</body>
</html>