<%@ page contentType="text/html; charset=UTF-8" %> 

<%@ page import="java.util.*" %>
<%@ page import="utility.*" %>
<%@ page import="hmp.*" %>
<%@ page import ="org.apache.commons.fileupload.*" %>



<%
	request.setCharacterEncoding("UTF-8");
	String root = request.getContextPath();
	   
    String tempDir = "/hmp/temp"; 		//임시폴더
    String upDir = "/hmp/storage";  	//실제 파일이 들어갈 폴더
    
  	tempDir = application.getRealPath(tempDir);
  	upDir = application.getRealPath(upDir); 		//서버상의 절대 경로를 위해(?)
	
%>
