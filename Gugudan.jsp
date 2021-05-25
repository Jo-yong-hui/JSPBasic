<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<h1>구구단 - 24단</h1>
<%
	out.print("21 x 1 = " + (24*1) + "<br>");
	out.print("21 x 2 = " + (24*2) + "<br>");
	out.print("21 x 3 = " + (24*3) + "<br>");
	out.print("..." + "<br>");
	out.print("21 x 22 = " + (24*22) + "<br>");
	out.print("21 x 23 = " + (24*23) + "<br>");
	out.print("21 x 24 = " + (24*24) + "<br>");
%>
<hr>
<%
   for (int i = 1; i<=24; ++i){
	out.print("24 x " + i + " = " + (24*i) + "<br>");	
	}
%>

<%-- 이것은 JSP 주석입니다 --%>
</body>
</html>