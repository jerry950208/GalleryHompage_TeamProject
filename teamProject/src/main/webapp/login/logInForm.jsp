<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 
<script type="text/javascript" src="../script/joinScript.js?v=123"></script>
 -->
 
<script type="text/javascript">
	/* 해당페이지에 들어오게 되면 메뉴 클릭이 비활성화되게 설정 */
	$(document).ready(function() {
		$("#ArtFairs").css("color", "lightgray").on("click", function(event) {
			event.preventDefault();
		});
	});
	
	// 로그인 화면에서 입력 검사
	function checkLogin(){
		var frm = document.loginForm;
		if(!frm.memid.value){
			alert("아이디를 입력하세요");
			frm.id.focus();
		} else if(!frm.pw.value){
			alert("비밀번호를 입력하세요");
			frm.pw.focus();
		} else {
			frm.submit();
		}	
	}
</script>
<style type="text/css">
.div{
	padding-top: 350px;
	padding-bottom: 450px;
	width: 100%;
	height: 80%;
	font-family: Arial,Helvetica,sans-serif;
}
.input{
	width: 98%;
	background-color:transparent;
	border: none;
}
#table{
	border: none;
	width: 17%;
	border-spacing: 20px;
}
.td{
	border-bottom: 1px solid black;
}
.button{
	text-align: center;
}
#button{
	width: 100px;
	height: 30px;
	border-radius: 10px;
	background-color: black;
	color: white;
	box-shadow: 3px 3px 3px rgba(0,0,0,0.8);
	cursor: pointer;
	border: none;
}
#button:active {
	box-shadow: 1px 1px 1px rgba(0,0,0,0.7);
	position: relative;
	top: 2px;
	left: 2px;
}
</style>
</head>
<body>
	<div class="div">
		<form action="../login/logIn.do" method="post" name="loginForm">
			<table align="center" id="table">
				<tr>
					<td class="td" width="25%">ID</td>
					<td class="td"><input class="input" type="text" name="memid"></td>
				</tr>
				<tr>
					<td class="td">Password</td>
					<td class="td"><input class="input" type="password" name="pw"></td>
				</tr>
				
				<!-- 
					회원탈퇴를 여기다가 만들자
					confirm 으로 다시한번확인한후 확인 클릭시 탈퇴
				 -->
			</table>
			<div class="button">
				<button type="submit" id="button" onclick="checkLogin();">로그인</button> 
				<button type="button" id="button" onclick="location.href='../login/joinForm.do'">회원가입</button>
			</div>
		</form>
	</div>
</body>
</html>