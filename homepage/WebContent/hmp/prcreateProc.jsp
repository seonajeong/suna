<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="hmp.hmpDAO"/>

<%
	UploadSave upload = new UploadSave(request, -1, -1, tempDir);
	String id = upload.getParameter("id");
	String email = upload.getParameter("email");

	String str = "";
	
	if(dao.duplicateId(id)) {
		str = "중복된 ID입니다.";
	}else if(dao.duplicateEmail(email)) {
		str = "중복된 Email입니다.";
	}else {
		request.setAttribute("upload", upload);
	
%>

	<jsp:forward page="/hmp/createProc.jsp"/>
 
 
 <%
 
 	return; 
 }
 %>
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 

<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 
<DIV class="title">ID 및 Email 중복확인</DIV>
	<div class="content">
		<%=str %>
	</div>
 
  
  <DIV class='bottom'>
    <input type='button' value='다시시도' onclick="history.back()">
  </DIV>
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 
