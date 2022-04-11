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
        $("#galleries_nav_Contact > a").css("color", "lightgray").on("click", function (event) {
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
			
			
			<div>
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