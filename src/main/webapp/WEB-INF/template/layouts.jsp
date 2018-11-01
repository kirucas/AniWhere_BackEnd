<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>AniWhere Administrator</title>
	
	<!-- plugins:css -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/iconfonts/puse-icons-feather/feather.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/iconfonts/font-awesome/css/font-awesome.min.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/css/vendor.bundle.base.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/css/vendor.bundle.addons.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/iconfonts/ti-icons/css/themify-icons.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/summernote/dist/summernote-bs4.css' />">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/shared/style.css' />">
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/demo_1/style.css' />">
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="<c:url value='/resources/assets/images/favicon.png' />" />

</head>
<body>
	<div class="container-scroller">
		<!-- navigation bar start -->
		<tiles:insertAttribute name="Top" />
		<!-- navigation bar end -->
		<div class="container-fluid page-body-wrapper">
			<!-- left navigation bar start -->
			<tiles:insertAttribute name="Left" />
			<!-- left navigation bar end -->
			
			<div class="main-panel">
			
				<div class="content-wrapper">
					<!-- content start -->
					<tiles:insertAttribute name="Body" />
					<!-- content end -->
				</div>
				
				<!-- footer start -->
				<tiles:insertAttribute name="Footer" />
				<!-- footer end -->
			</div>
		</div>
	</div>
	<!-- plugins:js -->
    <script src="<c:url value='/resources/assets/vendors/js/vendor.bundle.base.js' />"></script>
    <script src="<c:url value='/resources/assets/vendors/js/vendor.bundle.addons.js' />"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->    
    <script src="<c:url value='/resources/assets/js/shared/off-canvas.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/hoverable-collapse.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/misc.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/settings.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/todolist.js' />"></script>
    <!-- endinject -->
    
    <!-- Custom js for this page-->
    <script src="<c:url value='/resources/assets/js/demo_1/dashboard.js' />"></script>
    <script src="<c:url value='/resources/assets/js/demo_1/dashboard_2.js' />"></script>
    <script src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="<c:url value='/resources/assets/js/shared/google-charts.js'/>"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a4fb652ba7630c5395293fd0480943a"></script>
    <script src="<c:url value='/resources/js/integration_js.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/tooltips.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/modal-demo.js' />"></script>
    <script src="<c:url value='/resources/assets/vendors/summernote/dist/summernote-bs4.min.js' />"></script>
    <jsp:include page="/resources/js/animal_board.jsp" />
    <jsp:include page="/resources/js/shelter_js.jsp" />
    <jsp:include page="/resources/js/store_location.jsp" />
    <jsp:include page="/resources/js/notice_js.jsp" />
    <!-- End custom js for this page-->
</body>

</html>