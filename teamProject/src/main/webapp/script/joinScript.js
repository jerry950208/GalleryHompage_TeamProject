// 아이디 입력창 띄우기
function checkId() {
	var memid = document.frm.memid.value;
	
	if(memid == "") {
		alert("먼저 아이디를 입력하세요.");
		document.frm.memid.focus();
	} else {
		// 브라우저창 열기
		window.open("checkId.do?memid="+memid, "", "width=450 height=250 left=500 top=200")
	}
}

// 로그인 화면에서 입력 검사
function checkLogin(){
	var f = document.form1;
	if(!f.memid.value){
		alert("아이디를 입력하세요");
		f.id.focus();
	} else if(!f.pw.value){
		alert("비밀번호를 입력하세요");
		f.pw.focus();
	} else {
		f.submit();
	}	
}

// 회원가입 입력검사
function check(){
		var frm = document.frm;

        if(!frm.memname.value){
            alert("이름을 입력하세요");
            frm.memname.focus();
            return false;
        } else if(!frm.memid.value){
            alert("아이디를 입력하세요.");
            frm.memid.focus();
            return false;
        } else if(!frm.pw.value){
            alert("비밀번호를 입력하세요.");
            frm.pw.focus();
            return false;
        } else if(!frm.repw.value){
            alert("비밀번호 재확인을 입력하세요.");
            frm.repw.focus();
            return false;
        } else if(frm.pw.value != frm.repw.value){
            alert("비밀번호를 재확인하세요");
            return false;
        } else {
			frm.submit();
		}        
}