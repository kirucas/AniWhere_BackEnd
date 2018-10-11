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
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
                <div class="row w-100">
                    <div class="col-lg-4 mx-auto">
                        <div class="auto-form-wrapper">
                            <form action="<c:url value='/admin/signInProcess.aw' />">
                                <div class="form-group">
                                    <label class="label">아이디</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="아이디">
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
                                        <input type="password" class="form-control" placeholder="*********">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-success submit-btn btn-block" type="submit">로그인</button>
                                </div>
                                <div class="form-group d-flex justify-content-between">
                                    <div class="form-check form-check-flat mt-0">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" checked>자동 로그인
                                        </label>
                                    </div>
                                    <a href="#" class="text-small forgot-password text-black">비밀번호를<br /> 잊어버렸어요!</a>
                                </div>
                                <!-- <div class="form-group">
                                  <button class="btn btn-block g-login">
                                    <img class="mr-3" src="assets/images/file-icons/icon-google.svg" alt="">Google로 로그인</button>
                                </div> -->
                                <div class="text-block text-center my-3">
                                    <span class="text-small font-weight-semibold">아직 회원이 아니세요?</span>
                                    <a href="<c:url value='/main.aw' />" class="text-black text-small">새 아이디 만들어요.</a>
                                </div>
                            </form>
                        </div>
                        <ul class="auth-footer">
                            <li>
                                <a href="#">문의하기</a>
                            </li>
                            <li>
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
    <script src="<c:url value='/resources/assets/vendondor.bundle.base.js' />"></script>
    <script src="<c:url value='/resources/assets/vendondor.bundle.addons.js' />"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="<c:url value='/resources/asseared/off-canvas.js' />"></script>
    <script src="<c:url value='/resources/asseared/hoverable-collapse.js' />"></script>
    <script src="<c:url value='/resources/asseared/misc.js' />"></script>
    <script src="<c:url value='/resources/asseared/settings.js' />"></script>
    <script src="<c:url value='/resources/asseared/todolist.js' />"></script>
    <!-- endinject -->
</body>
</html>