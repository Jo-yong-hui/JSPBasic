<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- SungJukV2b.html => SungJukV2b.jsp --%> 

<jsp:useBean id="sj" class="sietageek.SungJuk" />
<%-- Sungjuk sj = new SungJuk(); 원래 이모습인걸 위로 재표현--%>

<jsp:setProperty name="sj" property="*" />
<%--
아래 변수 4줄을 위 <jsp:setProperty name="sj" property="*" /> 
한줄로 표현한것
String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 프로그램 v2b</title>
</head>
<body>
<h1>성적처리 프로그램</h1>
<p>이름 : <jsp:getProperty name="sj" property="name" /></p>
<p>국어 : <jsp:getProperty name="sj" property="kor" /></p>
<p>영어 : <jsp:getProperty name="sj" property="eng" /></p>
<p>수학 : <jsp:getProperty name="sj" property="mat" /></p>
<p>총점 : <jsp:getProperty name="sj" property="tot" /></p>
<p>평균 : <jsp:getProperty name="sj" property="avg" /></p>
</body>
</html>

<%-- <p>이름 : <%=name%></p>
<p>국어 : <%=kor %></p>
<p>영어 : <%=eng %></p>
<p>수학 : <%=mat %></p>
<p>총점 : <%=tot %></p>
<p>평균 : <%=avg %></p>--%>
