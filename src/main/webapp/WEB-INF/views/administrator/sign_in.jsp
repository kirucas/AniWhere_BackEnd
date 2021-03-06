<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>AniWhere Administrator Login Page</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/iconfonts/puse-icons-feather/feather.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/css/vendor.bundle.base.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/assets/vendors/css/vendor.bundle.addons.css' />">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/shared/style.css' />">
    <!-- endinject -->
    <link rel="shortcut icon" href="<c:url value='/resources/assets/images/favicon.png' />" />
    
</head>
<body>
	
	<c:if test="${not empty signInFail }">
		<script>
			alert("${signInFail}");
		</script>
	</c:if>
	<c:if test="${not empty signOutSuccess }">
		<script>
			alert("${signOutSuccess}");
		</script>
	</c:if>

    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
                <div class="row w-100">
                    <div class="col-lg-4 mx-auto">
                        <div class="auto-form-wrapper">
                            <form action="<c:url value='/admin/signInProcess.aw' />" method="post">
                                <div class="form-group">
                                    <label class="label">아이디</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Username" name="am_id">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="label">비밀번호</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" placeholder="*********" name="am_pw">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-primary submit-btn btn-block">로그인</button>
                                </div>
                                <div class="form-group d-flex justify-content-between">
                                    <div class="form-check form-check-flat mt-0">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input">아이디 저장
                                        </label>
                                    </div>
                                    <!-- <a href="#" class="text-small forgot-password text-black">비밀번호를 잊어버렸어요</a> -->
                                </div>
                                <!-- <div class="text-block text-center my-3">
                                    <span class="text-small font-weight-semibold">아직 회원이 아니세요?</span>
                                    <a href="register.html" class="text-black text-small">가입하러 가기</a>
                                </div> -->
                            </form>
                        </div>
                        <ul class="auth-footer">
                            <li>
                                <a href="<c:url value='/main.aw' />">문의하기</a>
                            </li>
                            <li>
                                <%-- <a href="<c:url value='/qr_generator.aw' />">도움말</a> --%>
                                <a href="#">도움말</a>
                            </li>
                        </ul>
                        <p class="footer-text text-center">copyright © 2018 AniWhere. All rights reserved.</p>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
  
    <script src="<c:url value='/resources/assets/vendors/js/vendor.bundle.base.js' />"></script>
    <script src="<c:url value='/resources/assets/vendors/js/vendor.bundle.addons.js' />"></script>
   
    <!-- endinject -->
    <!-- inject:js -->

    <script src="<c:url value='/resources/assets/js/shared/off-canvas.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/hoverable-collapse.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/misc.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/settings.js' />"></script>
    <script src="<c:url value='/resources/assets/js/shared/todolist.js' />"></script>
    
    <!-- endinject -->
</body>
</html>