<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<c:set var="url">jdbc:mariadb://bigdata.cwj3cdfzt1so.ap-northeast-2.rds.amazonaws.com/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>    
    
<sql:setDataSource var="mariadb"
url="${url}" driver="${drv}"
user="${usr}" password="${pwd}" />   
  
<sql:query var="rs" dataSource="${mariadb}" >
	select * from books
	order by bookid desc
</sql:query>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록된 도서 조회</title>
</head>
<body>
<h1>등록된 도서 조회</h1>


<c:forEach var="row" items="${rs.rows}">
	<p>${row.bookid} ${row.bookname}
	   ${row.publish} ${row.price}</p>
	<hr>
</c:forEach>

</body>
</html>