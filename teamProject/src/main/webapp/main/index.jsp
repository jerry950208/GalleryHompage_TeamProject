<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/index_Frame.css">
</head>
<!-- 해당 페이지는 인덱스 페이지로  -->
<body>
	<div id="all">
	
		<!-- header : 로고 및 메뉴  -->
		<div id="header">
			<a href="index.jsp"><img alt="메인" src="../image/logo.png"></a>
			<div id="menu">
				<a href="#">HOME</a>&emsp;
				<a href="#">Artists</a>&emsp;
				<a href="#">Exhibitions</a>&emsp;
				<a href="#">Art Fairs</a>&emsp;
				<a href="#">Galleries</a>
			</div>
		</div>
		
		<!-- section : 전시회 예약 및   -->
		<div id="section">
			<c:if test="${ref==null}">
				<jsp:include page="home.jsp"/>
			</c:if>
			<c:if test="${ref!=null}">
				<jsp:include page="${ref}"/>
			</c:if>
		</div>
		
		<!-- footer -->
		<div id="footer">
			<div id="f_image">
				<span><a><img alt="main" src="../image/logo.png" width="150px;"></a></span>
			</div>
			
			<div id="f_info">
				<table>
					<tr>
						<td>BK Hannam : 25, Daesagwan-ro, Yongsan-gu, Seoul, Korea</td>
						<td>02 790 7079</td>
						<td>
							<a href="#"><img alt="페북" src="../image/f.png"></a>
							<a href="#"><img alt="인스타" src="../image/insta.png"></a>
						</td>
					</tr>
					
					<tr>
						<td>BK Itaewon : 56, Itaewon-ro 42-gil, Yongsan-gu, Seoul, Korea</td>
						<td>info@gallerybk.co.kr</td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>