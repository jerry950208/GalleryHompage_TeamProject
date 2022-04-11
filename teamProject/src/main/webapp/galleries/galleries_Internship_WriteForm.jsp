<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function () {
    $(document).ready(function () {
        $("#Galleries").css("color", "lightgray").on("click", function (event) {
            event.preventDefault();
        });
        $("#galleries_nav_Internship > a").css("color", "lightgray").on("click", function (event) {
            event.preventDefault();
        });
    });
});
</script>
<style type="text/css">
#galleries_Frame {
	width: 1000px;
	height: 900px;
	margin: auto;
	margin-top: 10em;
}
#galleries_nav {
	float: left; 
	width: 15%;
	font: 22px barlow-medium, barlow, sans-serif;
	
}
#galleries_nav td {
	padding: 10px;
}
#galleries_nav_About {
	 padding: 10px;
}
#galleries_Content {
	float: right; 
	text-align: justify; 
	width: 75%;
}
#galleries_Content_Title {
	text-align: right;
	font: 30px barlow-medium, barlow, sans-serif;
	padding: 8px;
}
#galleries_UnderLine {
	border-top: 5px solid black;
	margin-bottom: 3em; 
}
#galleries_Content:after {
	clear: both;
}
a {
	text-decoration: none;
	color: black;
}
#content {
	font: 17px barlow-extralight, barlow, sans-serif;
	color: #121212;
	font-weight: lighter;
	line-height: 130%;
}
</style>
</head>
<body>
	<div id="galleries_Frame">
		<div id="galleries_nav">
			<table>
				<tr>
					<td id="galleries_nav_About"><a href="../galleries/galleries_About.do">About</a></td>
				</tr>
				<tr>
					<td id="galleries_nav_BK_Hannam"><a href="../galleries/galleries_BK_Hannam.do">BK Hannam</a></td>
				</tr>
				<tr>
					<td id="galleries_nav_BK_Itaewon"><a href="../galleries/galleries_BK_Itaewon.do">BK Itaewon</a></td>
				</tr>
				<tr>
					<td id="galleries_nav_Internship"><a href="../galleries/galleries_Internship.do">Internship</a></td>
				</tr>
				<tr>
					<td id="galleries_nav_Contact"><a href="../galleries/galleries_Contact.do">Contact</a></td>
				</tr>
			</table>
		</div>
		
		<div id="galleries_Content">
			<div id="galleries_Content_Title">Gallery BK Hannam</div>
			<div id="galleries_UnderLine"></div>
			
			<div>
				<form action="../galleries/galleries_Internship_Write.do">
					<textarea rows="50em" cols="105em" name="internship_Content">
						${internship_Content }
					</textarea>
					<input type="submit" value="저장">
				</form>
			</div>
			
			
		</div>
		
		<div>
			
		</div>
	</div>
	

</body>
</html>