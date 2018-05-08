<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="hmp.hmpDAO"/>

<%

	String email = request.getParameter("email");

	boolean flag = dao.duplicateEmail(email);

%> 
 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">


<title></title> 

<script type="text/javascript">
	function use() {
		opener.frm.email.value='<%=email%>';
		self.close();
	
}
</script>

</head> 

<body>
<jsp:include page="/menu/top.jsp" flush="false"/>

<DIV class="title">Email 중복확인</DIV>

<div class="content">
	
	<%
	
		if(flag) {
			out.print("중복되어 사용할 수 없습니다.");
		}else {
			out.print("사용가능한 ID입니다.<br><br>");
			out.print("<button type='button' onclick='use()'>사용</button>");
			
		}
	
	%>

</div>
 
  <DIV class='bottom'>
    <input type='button' value='다시시도' onclick="location.href='./email_form.jsp'">
    <input type='button' value='닫기' onclick="window.close()">
  </DIV>
 
 

</body>

</html> 