<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
<script type="text/javascript">
	/* 해당페이지에 들어오게 되면 메뉴 클릭이 비활성화되게 설정 */
	$(document).ready(function() {
		$("#ArtFairs").css("color", "lightgray").on("click", function(event) {
			event.preventDefault();
		});
	});
	
	window.onload = function(){
		var dialog = document.getElementById("delete_dialog");
		dialog.showModal();
	}
	function close_ok() {
		var dialog = document.getElementById("delete_dialog");
		dialog.close();
		location.href="delete.do";
	}
	function close_cancel() {
		var dialog = document.getElementById("delete_dialog");
		dialog.close();
		location.href = "../main/index.jsp";
	}
</script>
</head>
<body>
	<dialog id="delete_dialog">		
		<p>회원 탈퇴하시겠습니까?</p>
		<button type="button" id="button" onclick="close_ok()">탈퇴</button>
		<button type="button" id="button" onclick="close_cancel()">취소</button>
	</dialog>
</body>
</html>