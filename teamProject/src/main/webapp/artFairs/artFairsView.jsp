<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/cssMy.css?vs=234">
<script type="text/javascript">

$(document).ready(function () {
	/* 해당페이지에 들어오게 되면 메뉴 클릭이 비활성화되게 설정 */
    $("#ArtFairs").css("color", "lightgray").on("click", function (event) {
        event.preventDefault();
    });
    
    var imgs;
	var img_count;			//이미지 갯수
	var img_position = 1;	//이미지 넘버링
	
	var pageNumber = 1;		//페이지 넘버링

	imgs = $(".slide ul");
	img_count = imgs.children().length;

	//버튼을 클릭했을 때 함수 실행
	$('#back').click(function() {
		back();
	});
	$('#next').click(function() {
		next();
	});

	function back() {
		if (1 < img_position) {
			imgs.animate({
				left : '+=600px'	//우로 밀기
			});				
			img_position--;			//이미지 넘버링 재설정
		}
		pageNumber--;				//페이지 넘버링 재설정
		if(pageNumber < 1) {		//페이지넘버가 이미지갯수보다 작지않게
			pageNumber = 1;
		}
		$('input[name=bar]').attr('value', pageNumber + "/" + img_count);
	}
	
	function next() {
		if (img_count > img_position) {
			imgs.animate({
				left : '-=600px'	//좌로 밀기
			});
			img_position++;			//이미지 넘버링 재설정
		}
		pageNumber++;				//페이지 넘버링 재설정
		if(pageNumber > img_count) {//페이지넘버가 이미지갯수보다 크지않게
			pageNumber = img_count;
		}
		$('input[name=bar]').attr('value', pageNumber + "/" + img_count);
	}
});
</script>
<style media="screen">
.slide {
	width: 550px;
	height: 340px;
	overflow: hidden;
	position: relative;
	margin-bottom: 0;
	margin-top: 0;
	margin-left: auto;
	margin-right: 0; 
}

.slide ul {
	position: absolute;
	top: 0;
	left: 0;
	font-size: 0;
	padding: 0;
}

.slide ul li {
	display: inline-block;
	padding: 0;
}
#back {	
	left: 25px; 
	transform: rotate(225deg); /* 각도 */
}
#next { 
	right: 25px; 
	transform: rotate(405deg); /* 각도 */	
}
.slide:hover .button{
	opacity: 1;
}
.button {
	display: block;
	border-top: 5px solid white;
    border-right: 5px solid white;
    border-radius: 3px;
    border-left: 0;
    border-bottom: 0;
	outline: 0;
	cursor: pointer;
	z-index: 1;
	background-color: #00ff0000;
	background: none;
	position: absolute;
	top: 50%;
	opacity: 0;
	width: 25px;
    height: 25px;
    padding-right: 10px;
}
.slide:hover .bar{
	opacity: 1;
}
.slide:hover .bar_num{
	opacity: 1;
}
.bar{
	display: block;
	opacity: 0;
	top: 310px;
	position: absolute;
	outline: 0;
	background-color: rgba(255, 255, 255, 0.7);			/*투명도 조절*/
	width: 100%;
	border: 0;
	height: 30px;
	text-align: right;
}
.bar_num{
	display: block;
	opacity: 0;
	background-color: #00ff0000;	/*색상코드:투명*/
	text-align: right;
	border: 0;
	width: 97%;
	height: 30px;
	outline: 0;
}
</style>
</head>
<body>
	<div id="view_all">
		<div id="view_nav">
			<div id="view_tb1">
				<div>
					<div>
						<span class="sp1">${dto1.title}</span>
					</div>
					<div>
						<span class="sp2">${dto1.info_date}</span><br> 
						<span class="sp2">${dto1.info}</span>
					</div>
				</div>
			</div>
		</div>

		<div id="view_section">
			<div class="slide">
				<button class="button" id="back"></button>
				<ul>
					<!-- cnt 값에 따라 사진 갯수 조정 -->
					<li><img src="${dto1.detailimg_src}" width="550px" height="340px"></li>
					<c:if test="${cnt == 1 }">
						<li><img src="${dto2.img_src1}" width="600px" height="340px"></li>
					</c:if>
					<c:if test="${cnt == 2 }">
						<li><img src="${dto2.img_src1}" width="600px" height="340px"></li>
						<li><img src="${dto2.img_src2}" width="600px" height="340px"></li>
					</c:if>
					<c:if test="${cnt == 3 }">
						<li><img src="${dto2.img_src1}" width="600px" height="340px"></li>
						<li><img src="${dto2.img_src2}" width="600px" height="340px"></li>
						<li><img src="${dto2.img_src3}" width="600px" height="340px"></li>
					</c:if>
				</ul>
				<button class="button" id="next"></button>
				<!-- 슬라이드 이미지 위에 페이징처리 하기 -->
				<div class="bar">
					<input type="text" name="bar" class="bar_num" value="1/${cnt+1 }" readonly/>
				</div>				
			</div>
		</div>
		<div id="view_aside">
			<div id="view_tb2">
				<div>
					<span class="sp3">${dto1.place}</span>
				</div>
				<div>
					<span class="sp4">${dto1.place_detail}</span>
				</div>
				<div class="sp3">&nbsp;</div>
				<div>
					<span class="sp3">${dto1.artists }</span>
				</div>
				<div>
					<span class="sp4">${dto1.artist_name}</span>
				</div>
			</div>
		</div>

		<div id="view_footer">&nbsp;</div>
	</div>
</body>
</html>