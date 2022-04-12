<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://smtpjs.com/v3/smtp.js"></script>
<script type="text/javascript">
function sendEmail() {
	var name = document.querySelector('#name').value;
	alert(name);
	Email.send({
		
		Host : "smtp.gmail.com",
		Username : "dogcat281@gmail.com",	// 사용자이름
		Password : "aqhbmasfcxrrhjvf",		// 본인의 gmail 비밀번호
		To : 'dogcat281@gmail.com',			// 해당 주소로 메일이 간다
		From : 'dogcat281@gmail.com',		// 보낼사람의 gmail주소
		Subject : "Contact",				// 제목
		Body : `
			이름 : ${name}<br/><br/>
			이메일 : ${document.querySelector('#email').value}<br/><br/>
			내용 : ${document.querySelector('#message').value}<br/><br/>			
		`
	}).then(
		message => alert(message)
	);
}
function reset() {
	document.querySelector('#name').value = "";
	document.querySelector('#email').value = "";
	document.querySelector('#message').value = "";
	
}
</script>
</head>
<body>
	<div style="border: 1px solid black; width: 1200px; height: auto;">
		<div style="border: 1px solid black; width: 100%; height: 100px;">
			test
		</div>
		
		<div style="border: 1px solid red; width: 100%; height: auto;">
			<a href="mailto:jerry950208@naver.com?subject=문의가 있습니다!&body=mailto 태그 사용 방법에 대해 자세히 알고 싶습니다"><input type="button" value="확인"></a>
			content<br>
			content<br>
			content<br>
			content<br>
			content<br>
			content<br>
			content<br>
			content<br>
			content<br>
			content
			<input type="text" id="name">
			<input type="text" id="email">
			<input type="text" id="message">
		</div>
		<div style="border: 1px solid green; width: 100%; height: 100px;">
			<input type="button" value="보내기" onclick="sendEmail(); reset();">
		</div>
	</div>
</body>
</html>