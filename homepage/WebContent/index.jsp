<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String root = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<title>suna's homepage :)</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">

<body>
	<jsp:include page="/menu/top.jsp" flush="false" />

<!-- Footer -->
	<jsp:include page="/menu/bottom.jsp" flush="false" />


</body>
</html>
