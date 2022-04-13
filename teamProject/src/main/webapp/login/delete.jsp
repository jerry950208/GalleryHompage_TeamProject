<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
		location.href = "../main/index.jsp";
	}
</script>
</head>
<body>
	<dialog id="delete_dialog">		
		<c:if test="${result > 0 }">
			<p>탈퇴 완료</p>
		</c:if>
		<c:if test="${result == 0}">
			<p>탈퇴 실패</p>
		</c:if>
		<button type="button" id="button" onclick="close_ok()">확인</button>
	</dialog>
</body>
</html>