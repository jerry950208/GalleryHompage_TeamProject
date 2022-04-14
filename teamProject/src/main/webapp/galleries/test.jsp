<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<c:forEach var="i" begin="0" end="${list1.size(), arr.lenth }" step="1"> <!-- 이름이 들어가 잇는 리스트 14번 -->
		<c:forEach var="j" begin="0" end="${list2.size() }" step="1"> <!-- list.get(name).get(j) -->
			name, src
		</c:forEach>
	</c:forEach>
	
</body>
</html>