<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- SungJukV2a.html => SungJukV2a.jsp --%> 
<% 
	//SungJukV2a.html로 부터 입력받은 값들을 가져와서 변수에 대입
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));

	int tot = kor + eng + mat;
	double avg = (double)tot / 3;
	String mean = String.format("%.1f", avg);
	// String.format을 쓰면 printf문과 같이 %f, %d, %s 등의 서식값을 쉽게 넣을 수 있습니다.
	// 평균은 반올림하여 소수 첫째자리까지 출력하라고 했으므로 %.1f라고 정해주시고
	// 그 자리에 avg 변수값을 넣어주시면 됩니다.
	// 그러면 %.1f값에 첫째자리까지 반올림한 avg 값이 출력됩니다.
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 프로그램</title>
</head>
<body>
<h1>성적처리 프로그램</h1>
<p>이름 : <%=name%></p>
<p>국어 : <%=kor%></p>
<p>영어 : <%=eng%></p>
<p>수학 : <%=mat%></p>
<p>총점 : <%=tot%></p>
<p>평균 : <%=mean%></p>
</body>
</html>

<%-- <p>이름 : <%=name%></p>
<p>국어 : <%=kor %></p>
<p>영어 : <%=eng %></p>
<p>수학 : <%=mat %></p>
<p>총점 : <%=tot %></p>
<p>평균 : <%=avg %></p>--%>
