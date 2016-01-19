<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Foofle.com</title>
</head>
<style>
#container {
	margin-top: 30px;
}
input {
	width: 300px;
}
</style>
<body>
	<div id="container">
		<h2>Foofle Search</h2>
		<form id="search-form" method="POST">
		<input id="search-term" name="search-term" placeholder="Feeling fluffy" value="${searchterm}"/><br/><br/>
		<button id="valid" type="submit">Search</button>
		</form>
		<c:if test="${not empty searchterm}">
			<p>Search result for "${searchterm}" : ${results.size()}</p>
		</c:if>
		<c:forEach items="${results}" var="r" varStatus="">
			<p>${r.link} ${r.occur}</p>
		</c:forEach>
	</div>
</body>
</html>