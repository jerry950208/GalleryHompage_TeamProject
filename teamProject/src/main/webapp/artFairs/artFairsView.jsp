<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/cssMy.css?vs=123">
<script type="text/javascript">
/* 해당페이지에 들어오게 되면 메뉴 클릭이 비활성화되게 설정 */
$(document).ready(function () {
    $("#ArtFairs").css("color", "lightgray").on("click", function (event) {
        event.preventDefault();
    });
});
</script>
</head>
<body>
<div id="view_all">
	<div id="view_nav">
		<div id="view_tb1">
			<div>
				<div>
					<span class="sp1">${dto.title}</span>
				</div>
				<div>
					<span class="sp2">${dto.info_date}</span><br>
					<pre><span class="sp2">${dto.info}</span></pre>
				</div>
			</div>
		</div>
	</div>

	<div id="view_section">
		<img align="right" width="550px" height="340px" src="${dto.detailimg_src}">
	</div>
	<div id="view_aside" >
		<div id="view_tb2">
			<div>
				<span class="sp3">${dto.place}</span>
			</div>
			<div>
				<span class="sp4">${dto.place_detail}</span>
			</div>
			<div class="sp3"> &nbsp; </div>
			<div>
				<span class="sp3">${dto.artists }</span>
			</div>
			<div>
				<span class="sp4">${dto.artist_name}</span>
			</div>
		</div>
	</div>
	
	<div id="view_footer">&nbsp;</div>
</div>
</body>
</html>