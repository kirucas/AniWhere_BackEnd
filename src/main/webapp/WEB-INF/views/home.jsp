<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="row">
	<div class="col-12 grid-margin">
	<h1>
		Hello world!  
	</h1>
	</div>
</div>
<div class="row">
	<div class="col-12 grid-margin">
		<P>The time on the server is ${serverTime}.</P>
		<a href="<c:url value='/sign_in.aw'/>">로그인 페이지</a>
	</div>
</div>