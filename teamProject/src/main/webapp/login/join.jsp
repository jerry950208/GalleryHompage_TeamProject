<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		if(${result} > 0) {
			alert("가입 성공");
			location.href="../login/logInForm.do";
		} else {
			alert("가입 실패");
			history.back();			
		}
	}
</script>
</head>
<body>

</body>
</html>