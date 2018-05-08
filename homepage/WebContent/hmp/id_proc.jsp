<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="hmp.hmpDAO"/>

<%
	String id= request.getParameter("id");

	boolean flag = dao.duplicateId(id);

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
		opener.frm.id.value='<%=id%>';
		self.close();
		
	}
</script>

</head> 

<body>
<jsp:include page="/menu/top.jsp" flush="false"/>

 
<DIV class="title">ID 중복확인</DIV>
 
 <div class="content">
 	입력된 ID: <%=id %> <br><br>
 	
 	<%
 	
 		if(flag) {
 			out.print("중복되어 사용할 수 없습니다.<br><br>");
 		}else{
 			out.print("사용가능한 ID입니다.<br><br>");
 			out.print("<button type='button' onclick='use()'>사용</button>");
 			
 			
 		}
 	%>
 	
 	
 </div>
  
  <DIV class='bottom'>
    <input type='button' value='다시시도' onclick="location.href='./id_form.jsp'">
    <input type='button' value='닫기' onclick="window.close()">
  </DIV>
 
 

</body>

</html> 