<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSTL-books</h1>
<h2>sql:setDataSource - 데이터베이스 연결정보 설정 </h2>
<h2>sql:update - insert,update,delete 질의문 실행 </h2>
<h2>sql:param - 질의문에 매개변수 전달</h2>

<c:set var="url">jdbc:mariadb://bigdata.cwj3cdfzt1so.ap-northeast-2.rds.amazonaws.com/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<c:set var="mno" value="500" />
<c:set var="userid" value="cord" />
<c:set var="passwd" value="200" />
<c:set var="name" value="brew" />
<c:set var="joindate" value="2021-05-25" />


<sql:setDataSource var="mariadb"
url="${url}" driver="${drv}"
user="${usr}" password="${pwd}" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into member (mno,userid,passwd,name,joindate)
	values(?,?,?,?,?)
	<sql:param value="${mno}" />
	<sql:param value="${userid}" />
	<sql:param value="${passwd}" />
	<sql:param value="${name}" />
	<sql:param value="${joindate}" />
	
</sql:update>
<p>처리결과 : ${cnt}</p>	
<p><c:if test="${cnt gt 0 }">데이터입력 성공!!</c:if></p>


</body>
</html>