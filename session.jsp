<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	</body>
</html>
<% 

//아이디 : abc123, 비밀번호는 987xyz
//아이디/비번 일치  => loginOk.jsp로 redirect
//아이디/비번 불일치 => loginFail.jsp로 redirect

	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	
	if (userid.equals("abc123") && passwd.equals("987xyz")){
		session.setAttribute("userid", userid);
		//새션객체에 userid 변수 생성 후 아이디를 저장
		
		System.out.println(session.getId());
		System.out.println(session.getCreationTime());
		System.out.println(session.getLastAccessedTime());
		
		// 숫자형태의 시간을 현실세계의 시간으로 변환
		SimpleDateFormat  sdf = new SimpleDateFormat(
				"yyyy/MM/dd hh:mm:ss");
		long ctime = session.getCreationTime();
		long latime = session.getLastAccessedTime();

		System.out.println(sdf.format(new Date(ctime)));
		System.out.println(sdf.format(new Date(latime)));
		
		response.sendRedirect("myinfo.jsp");
	}else	
		response.sendRedirect("loginFail.jsp");
%>
