<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/index_Frame.css">
<link rel="stylesheet" type="text/css" href="../css/home_Frame.css">
<link rel="stylesheet" type="text/css" href="../css/exhibition_Frame.css">
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
jQuery(function ($) {
	
	/* 해당페이지에 들어오게 되면 메뉴 클릭이 비활성화되게 설정 */
	$("#Exhibitions").css("color", "lightgray").on("click", function(event) {
		event.preventDefault();
	});
    
	$("#exhibition_wrapper").css("display", "none");
    $("#exhibition_wrapper").fadeIn(2000);
    $("a.transition").click(function (event) {
        event.preventDefault();
        linkLocation = this.href;
        $("#exhibition_wrapper").fadeOut(1000, redirectPage);
    });

    function redirectPage() {
        window.location = linkLocation;
    }
});	
</script>

</head>
<body>
<div id="exhibition_wrapper">
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
		</div>
	</div>	
	
			<!-- PAST EXHIBITIONS -->
		<div class="ex_wrapper">
			<div id="s2_2220">
				<div id="s2_top_wrapper">
					<div id="s2_top_title">PAST EXHIBITIONS</div>
					<div id="s2_year_2220">
						<a href="#s2_year_2220">2022-2020</a>
						<a href="#s2_year_1917">2019-2017</a>
						<a href="#s2_year_1614">2016-2014</a>
						<a href="#s2_year_1311">2013-2011</a>
					</div>
				</div>
				
				<div class="ex_info">
					<c:forEach var="dto" items="${list_2220}">
						<div class="ex_info_wrapper">
							<div><a href="../exhibition/exhibitionDetail.do?seq=${dto.seq}"><img src="${dto.ex_img}" class="ex_img"></a></div>	
							<div class="ex_date">${dto.ex_date}</div>	
							<div class="ex_title_wrapper">
								<div class="ex_titleName">${dto.ex_titleName }</div>	
								<div class="ex_artistName">${dto.ex_artistName }</div>	
							</div>
						</div>	
					</c:forEach>
				</div>
			</div>
		
			<div id="s2_1917">
				<div class="s2_top_wrapper_else">
					<div id="s2_year_1917">
						<a href="#s2_year_2220">2022-2020</a>
						<a href="#s2_year_1917">2019-2017</a>
						<a href="#s2_year_1614">2016-2014</a>
						<a href="#s2_year_1311">2013-2011</a>
					</div>
				</div>
				<div class="ex_info">
					<c:forEach var="dto" items="${list_1917}">
						<div class="ex_info_wrapper">
							<div><a href="../exhibition/exhibitionDetail.do?seq=${dto.seq}"><img src="${dto.ex_img}" class="ex_img"></a></div>
							<div class="ex_date">${dto.ex_date}</div>	
							<div class="ex_title_wrapper">
								<div class="ex_titleName">${dto.ex_titleName }</div>	
								<div class="ex_artistName">${dto.ex_artistName }</div>	
							</div>
						</div>	
					</c:forEach>
				</div>
			</div>
			<div id="s2_1614">
				<div class="s2_top_wrapper_else">
						<div id="s2_year_1614">
						<a href="#s2_year_2220">2022-2020</a>
						<a href="#s2_year_1917">2019-2017</a>
						<a href="#s2_year_1614">2016-2014</a>
						<a href="#s2_year_1311">2013-2011</a>
						</div>
				</div>
				<div class="ex_info">
					<c:forEach var="dto" items="${list_1614}">
						<div class="ex_info_wrapper">
							<div><img src="${dto.ex_img}" class="ex_img"></div>	
							<div class="ex_date">${dto.ex_date}</div>	
							<div class="ex_title_wrapper">
								<div class="ex_titleName">${dto.ex_titleName }</div>	
								<div class="ex_artistName">${dto.ex_artistName }</div>	
							</div>
						</div>	
					</c:forEach>
				</div>
			</div>
			<div id="s2_1311">
				<div class="s2_top_wrapper_else">
					<div id="s2_year_1311">
						<a href="#s2_year_2220">2022-2020</a>
						<a href="#s2_year_1917">2019-2017</a>
						<a href="#s2_year_1614">2016-2014</a>
						<a href="#s2_year_1311">2013-2011</a>
					</div>
				</div>
				<div class="ex_info">
					<c:forEach var="dto" items="${list_1311}">
						<div class="ex_info_wrapper">
							<div><img src="${dto.ex_img}" class="ex_img"></div>	
							<div class="ex_date">${dto.ex_date}</div>	
							<div class="ex_title_wrapper">
								<div class="ex_titleName">${dto.ex_titleName }</div>	
								<div class="ex_artistName">${dto.ex_artistName }</div>	
							</div>
						</div>	
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>