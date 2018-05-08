<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
<title></title> 

<script type="text/javascript">
	function inCheck(f){
		if(f.id.value==""){
			alert("ID를 입력하세요.");
			f.id.focus();
			return false;
		}
		if(f.passwd.value==""){
			alert("비밀번호를 입력하세요.");
			f.passwd.focus();
			return false;
		}
		if(f.repasswd.value==""){
			alert("비밀번호를 다시 확인해주세요.");
			f.repasswd.focus();
			return false;
		}
		if(f.passwd.value!=f.repasswd.value){
			alert("비밀번호가 일치하지 않습니다. \n다시 입력해주세요.");
			f.repasswd.focus();
			return false;
	}
		if(f.name.value==""){
			alert("이름을 입력해주세요.");
			f.name.focus();
			return false;
	}
		if(f.email.value==""){
			alert("이메일을 입력해주세요.");
			f.email.focus();
			return false;
	}
		
	}
	
	function idCheck(id) {
		if(id=="") {
			alert("ID를 입력하세요.");
			document.frm.id.focus();
		}else{
			var url = "./id_proc.jsp";
			url += "?id="+id;
			
			//새로운 창을 가운데로 이동하기 위해 변수에 담은 것. 선언 따로 해주지않아도 상관은 없지만 해주는 것을 권장한다.
			wr = window.open(url, "ID검색", "width=500, height=500"); 
			wr.moveTo((window.screen.width-500)/2,(window.screen.height-500)/2); //x, y지점
		
			
		}
		
	}
	
	function emailCheck(email) {
		if(email=="") {
			alert("이메일을 입력하세요.");
			document.frm.email.focus();
		}else{
			var url= "./email_proc.jsp";
			url += "?email="+email;
			
			//새로운 창을 가운데로 이동하기 위해 변수에 담은 것. 선언 따로 해주지않아도 상관은 없지만 해주는 것을 권장한다.
			wr = window.open(url, "Email검색", "width=500, height=500"); 
			wr.moveTo((window.screen.width-500)/2,(window.screen.height-500)/2); //x, y지점
		
		
		}
	}
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>


</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 
 <br><br><br><br>
<DIV class="title">회원가입</DIV>
 
<FORM name='frm' 
	  method='POST' 
	  action='./prcreateProc.jsp'
	  enctype ='multipart/form-data'
	  onsubmit='return inCheck(this)'>
	  
  <TABLE>
    <TR>
      <TH>ID</TH>
      <TD>
      	<input type="text" name="id" size="15">
      	<button type="button" onclick="idCheck(document.frm.id.value)">ID중복확인</button>
      </TD>
    </TR>   
    
    <TR>
     <TH>PASSWORD</TH>
     <TD>
     	<input type="password" name="passwd" size="15">
     </TD>
    </TR>
    
    <TR>
     <TH>PASSWORD CHECK</TH>
     <TD>
     	<input type="password" name="repasswd" size="15">
     </TD>
    </TR>
    
    <TR>
     <TH>NAME</TH>
     <TD>
     	<input type="text" name="name" size="15">
     </TD>
    </TR>
    
    <TR>
     <TH>TEL</TH>
     <TD>
     	<input type="text" name="tel" size="15">
     </TD>
     <TD></TD>
    </TR>       
    
    <TR>
     <TH>E-MAIL</TH>
     <TD>
     	<input type="text" name="email" size="15">
     	<button type="button" onclick="emailCheck(document.frm.email.value)">Email 중복확인</button>
     </TD>
    </TR>
    
    <TR>
     <TH>ZIPCODE</TH>
     <TD>
     	<input type="text" name="zipcode" size="10" id="sample6_postcode" placeholder="우편번호">
     	<button type="button" onclick="sample6_execDaumPostcode()">주소검색</button>
     </TD>
     <TD></TD>
    </TR>
    
    <TR>
     <TH>ADDRESS</TH>
     <TD>
     	<input type="text" name="address1" size="40" id="sample6_address" placeholder="주소">
     	<input type="text" name="address2" size="40" id="sample6_address2" placeholder="상세주소">
     </TD>
     <TD></TD>
    </TR>
    
    <TR>
      <TH>PICTURE</TH>
      <TD><input type="file" name="filename" accept=".jpg, .png, .gif"></TD>
      <TD>사진은 JPG, PNG, GIF파일만 올려주세요. </TD>
    </TR>
    

    
  </TABLE>

<br><br>  
  <DIV class='bottom'>
    <input type='submit' value='회원가입'>
    <input type="reset" value='취소' onclick='history.back()'>
  </DIV>
</FORM>
 
 <br><br>
 
</body>
</html> 
