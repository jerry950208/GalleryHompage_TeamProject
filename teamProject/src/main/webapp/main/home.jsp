<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/css.css">
</head>
<body>
	<div id="section">
			
			<!-- 전시회 예약 -->
			<div id="s1">
				<!-- 여기 for문 돌릴수 있을듯? -->
				<c:forEach var="i" begin="1" end="3" step="1">
				<div>
					<a href="#">
						<img alt="" src="../image/ex1.png">
					</a>
					<a id="exhibition_Title">
						Re, Vitality
					</a><br><br>
					<span id="exhibition_Artist">이길래 개인전</span><br>
					<span id="exhibition_Date">2022.03.10 - 04.07</span><br>
					<span id="exhibition_Floor">BK itaewon B1-3F</span><br><br>
					<input type="button" value="예약하기" id="reservation_Btn">
				</div>
				</c:forEach>
				<!-- 
				<div>
					<a href="#"><img alt="" src="../image/ex2.png"></a>
					<a id="exhibition_Title">
						Restoration of Realationships
					</a><br><br>
					<span id="exhibition_Artist">박윤경 개인전</span><br>
					<span id="exhibition_Date">2022.03.11-04.08</span><br>
					<span id="exhibition_Floor">BK Hannam 1F</span><br><br>
					<input type="button" value="예약하기" id="reservation_Btn">
				</div>
				<div>
					<a href="#"><img alt="" src="../image/ex3.png"></a>
					<a id="exhibition_Title">
						Borderless Universe
					</a><br><br>
					<span id="exhibition_Artist">강주리 김병윤 박선기 정해윤</span><br>
					<span id="exhibition_Date">2022.03.17-04.14</span><br>
					<span id="exhibition_Floor">BK Hannam 2-3F</span><br><br>
					<input type="button" value="예약하기" id="reservation_Btn">
				</div>
					
				 -->
				
				<div id="s1_span" style="width: 1000px;">
					<table style="width: 100%">
						<tr>
							<td>BK Hannam: 서울 용산구 대사관로 25</td>
						</tr>
						<tr>
							<td>BK Itaewon: 서울 용산구 이태원로 42길 56</td>
						</tr>
					</table>
				</div>				
			</div>
			
		</div>
			

</body>
</html>