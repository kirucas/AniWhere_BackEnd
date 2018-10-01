<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<title>AniWhere</title>

</head>
<body>
	<div class="container">
		<!-- navigation bar start -->
		<tiles:insertAttribute name="Top" />
		<!-- navigation bar end -->
		
		<!-- content start -->
		<tiles:insertAttribute name="Body" />
		<!-- content end -->
		
		<!-- footer start -->
		<tiles:insertAttribute name="Footer" />
		<!-- footer end -->
	</div>
</body>

</html>