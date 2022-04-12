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
    	// 상단 menu에 Galleries를 클릭했을경우, 해당 글자 색 변경, 클릭 안되게 설정
    	$("#Galleries").css("color", "lightgray").on("click", function (event) {
            event.preventDefault();
        });
    	// nav쪽에 About을 클릭시에 해당 글자 색 변경, 클릭 안되게 설정
        $("#galleries_nav_About > a").css("color", "lightgray").on("click", function (event) {
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
#content pre {
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
		<!-- nav -->
		<div id="galleries_nav">
			<table>
				<tr>
					<td id="galleries_nav_About">
						<a href="../galleries/galleries_About.do">About</a>
					</td>
				</tr>
				<tr>
					<td id="galleries_nav_BK_Hannam">
						<a href="../galleries/galleries_BK_Hannam.do">BK Hannam</a>
					</td>
				</tr>
				<tr>
					<td id="galleries_nav_BK_Itaewon">
						<a href="../galleries/galleries_BK_Itaewon.do">BK Itaewon</a>
					</td>
				</tr>
				<tr>
					<td id="galleries_nav_Internship">
						<a href="../galleries/galleries_Internship.do">Internship</a>
					</td>
				</tr>
				<tr>
					<td id="galleries_nav_Contact">
						<a href="../galleries/galleries_Contact.do">Contact</a>
					</td>
				</tr>
			</table>
		</div>
		
		<!-- About Content -->
		<div id="galleries_Content">
			<!-- Content쪽 상단 Title -->
			<div id="galleries_Content_Title">About</div>
			<!-- Content쪽 Title 하단 밑줄 -->
			<div id="galleries_UnderLine"></div>
			<!-- Content -->
			<div id="content">
				<div>
					<!-- Content 내용 -->
					<pre>
						${about_Content }
					</pre>
					<!--  
						 About_Content내용 수정을 위해서 About_Write_Form으로 이동하기 위한 버튼
						 나중에 login기능 추가될경우 admin에게만 버튼 보이게 설정 해야됨
					-->
					<input type="button" value="글 수정" onclick="location.href='../galleries/galleries_About_WriteForm.do'">
				</div>
				
				<!-- Contact Form : 정보 입력시 contact_write를 통해 메일로 전송됨 -->
				<form action="../galleries/contact_write.do" id="table_Frame" name="contact_Form">
					<table id="contact_Table">
						<tr>
							<td colspan="2" id="table_label">
								<label>CONTACT</label>
							</td>
						</tr>
						
						<tr>
							<td id="table_input">
								<!-- required : 해당 속성으로 입력검사를 해줄수 있음 -->
								<!-- 이름 입력 -->
								<input type="text" id="name" name="contact_Name" placeholder="Name" required="required">
							</td>
							<td>
								<!-- 이메일 입력 -->
								<input type="email" id="email" name="contact_Email" placeholder="Email" required="required">
							</td>
						</tr>
						<tr>
							<td colspan="2" id="table_textarea">
								<!-- 메시지 입력 -->
								<textarea rows="8em" cols="100em" id="message" name="contact_Message" placeholder="Message" required="required"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" id="table_submit">
								<input type="submit" value="submit" id="submit_Btn">
							</td>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>