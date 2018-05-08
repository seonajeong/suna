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
<jsp:include page="/menu/top.jsp" flush="false"/>

 
<DIV class="title"></DIV>
 
<FORM name='frm' method='POST' action='./email_proc.jsp'>
  <TABLE>
    <TR>
      <TH>Email</TH>
      <TD><input type="text" name="email" size="30" required="required"></TD>
    </TR>
  </TABLE>
  
  <DIV class='bottom'>
    <input type='submit' value='중복확인'>
    <input type='button' value='취소' onclick="history.back()">
  </DIV>
</FORM>
 

</body>

</html> 