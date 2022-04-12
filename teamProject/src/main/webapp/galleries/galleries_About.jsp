<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/galleries_Frame.css">
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