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

	function checkIdClose() {
		// opener : 자바스크립트 내장 객체, 부모 브라우저를 관리하는 객체
		opener.frm.memid.value = "${memid }";
		window.close();
		opener.frm.pw.focus();
	}
	
	function checkId() {
		if(!document.frm.memid.value) {
			alert("아이디를 입력하세요.");
			document.frm.memid.focus();
		} else {
			document.frm.submit();
		}
	}
</script>
</head>
<body>
<form action="checkId.do" method="post" name="frm">
	<c:if test="${exist }">
		${memid }는 사용중입니다.<br><br>
		아이디 <input type="text" name="memid">
		<button type="button" id="button" onclick="checkId()">중복체크</button>
	</c:if>
	<c:if test="${!(exist) }">
		${memid }는 사용가능합니다.<br><br>
		<button type="button" id="button" onclick="checkIdClose()">사용</button>
	</c:if>	
</form>
</body>
</html>