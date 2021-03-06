<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    @import '<c:url value="/resources/css/top_css.css" />';
</style>

<!-- Top nav bar start -->
<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">

	<div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
		<a class="navbar-brand brand-logo" href="<c:url value='/main.aw' />">
			<img src="<c:url value='/resources/images/logoLong.png'/>" alt="logo" />
		</a>
		<a class="navbar-brand brand-logo-mini" href="<c:url value='/main.aw' />">
			<img src="<c:url value='/resources/images/logo.png'/>" alt="logo" style="width:100%;height:100%"/>
		</a>
	</div>
	
	<div class="navbar-menu-wrapper d-flex align-items-center">
		<button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
			<span class="mdi mdi-menu"></span>
		</button>
		
		<ul class="navbar-nav navbar-nav-right">


			<li class="nav-item d-none d-lg-block color-setting">
				<a class="nav-link" href="#">
					<i class="mdi mdi-tune"></i>
				</a>
			</li>
			<li class="nav-item dropdown d-none d-xl-inline-block">
				<a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown">
					<span class="profile-text">반갑습니다. ${am_id}님!</span>
					<c:if test="${am_profile eq '#@!no_exist!@#' }" var="result">
							<img class="img-xs rounded-circle" src="<c:url value='/resources/images/profile_404.jpg'/>" alt="profile-image" />
						</c:if>
						<c:if test="${not result }">
							<img class="img-xs rounded-circle" src="<c:url value='${am_profile}' />" alt="profile-image" />
						</c:if>
				</a>
				<div class="dropdown-menu dropdown-menu-right navbar-dropdown">
					<!-- <a class="dropdown-item mt-2"> 회원 정보 수정 </a> -->
                    <!-- <a class="dropdown-item"> 비밀번호 변경 </a>
                    <a class="dropdown-item"> 마이페이지 </a> -->
                    <a class="dropdown-item mt-2" href="<c:url value='/admin/sign_out.aw' />"> 로그아웃 </a>
				</div>
			</li>
		</ul>
		
		<button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
			<span class="icon-menu"></span>
		</button>
	</div>
	
</nav>
<!-- Top nav end -->