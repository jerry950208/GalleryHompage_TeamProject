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
        $("#galleries_nav_BK_Hannam > a").css("color", "lightgray").on("click", function (event) {
            event.preventDefault();
        });
    });
});
</script>
<style type="text/css">
#galleries_Frame {
	width: 1000px;
	height: 1200px;
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
#table_Frame {
	margin-top: 5em;
}
#contact_Table {
	 margin: auto;
}
#table_label{
	text-align: center;
	padding: 7px;
}
#contact_Table label {
	font: 17px barlow-medium, barlow, sans-serif;
}
#contact_Table input[type="text"],
#contact_Table input[type="email"] {
	width: 98%;
	border: 0;
	border-bottom: 1px solid black;
	font: 15px barlow-medium, barlow, sans-serif;
}
#contact_Table input[type="text"]:hover,
#contact_Table input[type="email"]:hover {
	border-bottom: 2px solid black;
}
#contact_Table input[type="text"]:focus,
#contact_Table input[type="email"]:focus {
	border-bottom: 2px solid red;
	outline: none;
}
#table_input {
	height: 2em;
}
#table_textarea {
	padding-top: 10px;
}
#table_textarea > textarea {
	border: 0;
	font: 15px barlow-medium, barlow, sans-serif;
	border-bottom: 1px solid black;
}
#table_textarea > textarea:hover {
	border-bottom: 2px solid black;
}
#table_textarea > textarea:focus {
	border-bottom: 2px solid red;
	outline: none;
}
#table_submit {
	 text-align: center;
}
#submit_Btn {
	width: 180px;
	height: 50px;
	border: 0;
	background-color: white;
	font: 16px barlow-medium, barlow, sans-serif;
}
#submit_Btn:hover {
	color: #ccc;
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
			
			<div style="display: inline-block;">
				<img alt="Hannam" src="../image/bk_Hannam.jpg" style="width: 450px; height: 332px;">
				&emsp;&emsp;
				<!-- 지도 퍼오기 -->
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.899883973325!2d126.99899031563297!3d37.53385723375612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca3f9ec7e1843%3A0xc3583205649aebb1!2sGallery%20BK!5e0!3m2!1sko!2skr!4v1649382002567!5m2!1sko!2skr" 
				width="250px" height="332px" style="border:0;"
				allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
			
			<div>
				<table style="width: 750px;  margin-top: 4em;">
					<tr>
						<td style="font: 18px barlow-medium, barlow, sans-serif;">OPENING HOURS</td>
						<td style="font: 18px barlow-medium, barlow, sans-serif;">ADDRESS</td>
						<td rowspan="3" style="vertical-align: top; font: 17px barlow-extralight, barlow, sans-serif; font-weight: 100;">
							For general inquires,<br>
							please email info@gallerybk.co.kr test
						</td>
					</tr>
					
					<tr>
						<td width="250px" style="font: 17px barlow-extralight, barlow, sans-serif; font-weight: 100;">Tuesday to Sunday: 11am - 7pm <br>(Closed on Mondays)</td>
						<td width="200px" style="font: 17px barlow-extralight, barlow, sans-serif; font-weight: 100;">25, Daesagwan-ro <br>Yongsan-gu, Seoul, Korea</td>
					</tr>
					
					<tr>
						<td style="font: 17px barlow-extralight, barlow, sans-serif; font-weight: 100;">*Lunch Break: 1pm - 2pm</td>
					</tr>
				</table>
				
				<form action="../galleries/contact_write.do" id="table_Frame" name="contact_Form">
					<table id="contact_Table">
						<tr>
							<td colspan="2" id="table_label"><label>CONTACT</label></td>
						</tr>
						
						<tr>
							<td id="table_input"><input type="text" id="name" name="contact_Name" placeholder="Name" required="required"></td>
							<td><input type="email" id="email" name="contact_Email" placeholder="Email" required="required"></td>
						</tr>
						<tr>
							<td colspan="2" id="table_textarea"><textarea rows="8em" cols="100em" name="contact_Message" placeholder="Message" required="required"></textarea></td>
						</tr>
						<tr>
							<td colspan="2" id="table_submit"><input type="submit" value="submit" id="submit_Btn" ></td>
					</table>
				</form>
			</div>
		</div>
		
		<div>
			
		</div>
	</div>
	

</body>
</html>