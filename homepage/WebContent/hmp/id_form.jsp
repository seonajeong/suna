<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>

 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">

<title></title> 
</head> 
<body>

 
<DIV class="title">ID 중복확인</DIV>

<div class="content">

	ID를 입력하세요. <br><br>
</div>
 
<FORM name='frm' method='POST' action='./id_proc.jsp'>
  <TABLE>
    <TR>
      <TH>ID</TH>
      <TD><input type="text" name="id" size="20" required="required"></TD>
    </TR>
  </TABLE>
  
  <DIV class='bottom'>
    <input type='submit' value='중복확인'>
    <input type='button' value='취소' onclick="window.close()">
  </DIV>
</FORM>
 
 

<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>

</html> 