<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	var click=0;
	
	$('#test').click(function() {
		back();
	});
	
	function back() {
		click++;
		if(click > 5) {
			location.href="../main/index.jsp";
		}
	}
	
	
});

</script>
</head>
<body>
	<p id="test">test</p>
	<input type="button" value="click" onclick="click();">
</body>
</html>