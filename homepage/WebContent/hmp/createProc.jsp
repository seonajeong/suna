<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="hmp.hmpDAO"/>
<jsp:useBean id="dto" class="hmp.hmpDTO"/>

 <%
 	
 	UploadSave upload = new UploadSave(request, -1, -1, tempDir);
 
 	dto.setId(UploadSave.encode(upload.getParameter("id")));
 	dto.setPasswd(UploadSave.encode(upload.getParameter("passwd")));
 	dto.setName(UploadSave.encode(upload.getParameter("name")));
 	dto.setTel(UploadSave.encode(upload.getParameter("tel")));
 	dto.setEmail(UploadSave.encode(upload.getParameter("email")));
 	dto.setZipcode(UploadSave.encode(upload.getParameter("zipcode")));
 	dto.setAddress1(UploadSave.encode(upload.getParameter("address1")));
 	dto.setAddress2(UploadSave.encode(upload.getParameter("address2")));
 	
 	FileItem fileItem = upload.getFileItem("filename");
 	String filename= UploadSave.saveFile(fileItem, upDir);
 	
 	dto.setFilename(filename);
 	
 	boolean flag = dao.create(dto);
 	
 %>
 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 

<script type="text/javascript">
	function list() {
		var url="list.jsp";
		location.href="url";
		
	}
</script>



<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 
<DIV class="title">회원가입</DIV>

<div class="content">
	<%
		if(flag) {
			out.print("귀하의 해당 사이트 가입이 완료되었습니다.<br>감사합니다.");
			
		}else{
			out.print("귀하의 해당 사이트 가입이 완료되지 못하였습니다.<br>다시 시도해주시기 바랍니다.");
			
		}
	
	%>

</div>

  <DIV class='bottom'>
    <input type='button' value='목록' onclick="list()">
  </DIV>
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 
