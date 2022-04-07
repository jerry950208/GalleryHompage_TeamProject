<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/home_Frame.css">
<script type="text/javascript">
jQuery(function($) {
    $("body").css("display", "none");
    $("body").fadeIn(2000);
    $("a.transition").click(function(event){
        event.preventDefault();
        linkLocation = this.href;
        $("body").fadeOut(1000, redirectPage);
    });
    function redirectPage() {
    	window.location = linkLocation;
    }
});
</script>
</head>
<body>
	<!-- 전체 프레임 -->
	<div id="home_Frame">
		<div id="reservation_Sector">
			<c:forEach var="i" begin="1" end="3" step="1">
				<div id="reservation_float">
					<p>
						<a href="#">
							<img alt="" src="../image/ex1.png">
						</a>
					</p>
					
					<p>
						<a id="exhibition_Title">
							Re, Vitality
						</a>
					</p>
					
					<p id="exhibition_Artist">이길래 개인전</p>
					<p id="exhibition_Date">2022.03.10 - 04.07</p>
					<p id="exhibition_Floor">BK itaewon B1-3F</p><br><br>
					<input type="button" value="예약하기" id="reservation_Btn">
				</div>
			</c:forEach>
			
			<div id="exhibition_location">
				<table>
					<tr>
						<td>BK Hannam: 서울 용산구 대사관로 25</td>
					</tr>
					<tr>
						<td>BK Itaewon: 서울 용산구 이태원로 42길 56</td>
					</tr>
				</table>
			</div>
		</div>
		
		<!-- 지난 전시회 -->
		<div id="past_Exhibition_background_color">
			<div id="past_Exhibition_Frame">
				<p id="past_Exhibition_Title">Past Exhibitions</p>
				<div id="past_Exhibition_content">
					<!-- 여기도 for문 고민 -->
					<div>
						<a href="#">
							<img alt="" src="../image/s2_1.png">
						</a>
						<div id="past_Exhibition_TitleName">
							The Hidden Masterpiece
						</div>
						<div id="past_Exhibition_ArtistName">
						구본창, 김근태, 김동유, 김춘수,<br>
						김호득, 박다원, 서용선, 이교준,<br>
						장승택, 제여란, 차계남, 최상철,<br>
						최진욱 <br>
						</div>
						<div id="past_Exhibition_Date">
							2022.01.20 - 02.24
						</div>
					</div>
					<div>
						<a href="#">
							<img alt="" src="../image/s2_2.png">
						</a>
						<div id="past_Exhibition_TitleName">
							Garden of light
						</div>
						<div id="past_Exhibition_ArtistName">
							권용래
						</div>
						<div id="past_Exhibition_Date">
							2021.11.18 - 12.29
						</div>
					</div>
					<div>
						<a href="#">
							<img alt="" src="../image/s2_3.png">
						</a>
						<div id="past_Exhibition_TitleName">
							The Gathering, Bystanders
						</div>
						<div id="past_Exhibition_ArtistName">
							한재열
						</div>
						<div id="past_Exhibition_Date">
							2021.11.11 - 12.29
						</div>
					</div>
				</div>
				
				<div id="past_Exhibition_content">
					<div>
						<a href="#">
							<img alt="" src="../image/s2_4.png">
						</a>
						<div id="past_Exhibition_TitleName">
							UTOPIA: NOW HERE
						</div>
						<div id="past_Exhibition_ArtistName">
							장승택, 권용래, 박종규
						</div>
						<div id="past_Exhibition_Date">
							2021.08.19 - 09.16
						</div>
					</div>
					
					<div>
						<a href="#">
							<img alt="" src="../image/s2_5.png">
						</a>
						<div id="past_Exhibition_TitleName">
							It's The Hard Knock Life
						</div>
						<div id="past_Exhibition_ArtistName">
							우국원
						</div>
						<div id="past_Exhibition_Date">
							2021.06.10 - 07.29
						</div>
					</div>
					
					<div>
						<a href="#">
							<img alt="" src="../image/s2_6.png">
						</a>
						<div id="past_Exhibition_TitleName">
							Maniere-noir: RoyalBlue
						</div>
						<div id="past_Exhibition_ArtistName">
							신선주
						</div>
						<div id="past_Exhibition_Date">
							2021.04.01 - 05.20
						</div>
					</div>					
				</div>
			</div>
		</div>
		
		<!-- Subscribe -->
		<div id="subscribe_Frame">
			<div id="subscribe_Move_Center">
				<table>
					<tr>
						<td id="subscribe_Title">
							Subscribe to Our Newsletter
						</td>
					</tr>
					<tr>
						<td>
							<div id="subscribe_Underline"></div>
						</td>
					</tr>
					<tr>
						<td>
							<input type="email" name="email" placeholder="Enter your email here*" id="subscribe_Email">
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" value="SEND>" onclick="#" id="subscribe_Btn">
						</td>
					</tr>
				</table>
			</div>
		</div>
		
	</div>
</body>
</html>