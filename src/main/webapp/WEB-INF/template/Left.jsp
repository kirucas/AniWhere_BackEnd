<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	@import '<c:url value="/resources/css/left_css.css" />';
</style>

<!-- _settings-panel -->
<div class="theme-setting-wrapper">
    <div id="theme-settings" class="settings-panel">
        <i class="settings-close mdi mdi-close"></i>
        <div class="d-flex align-items-center justify-content-between border-bottom">
            <p class="settings-heading font-weight-bold border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Template Skins</p>
        </div>
        <div class="sidebar-bg-options selected" id="sidebar-light-theme">
            <div class="img-ss rounded-circle bg-light border mr-3"></div>Light
        </div>
        <div class="sidebar-bg-options" id="sidebar-dark-theme">
            <div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark
        </div>
        <p class="settings-heading font-weight-bold mt-2">Header Skins</p>
        <div class="color-tiles mx-0 px-4">
            <div class="tiles primary"></div>
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles pink"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
        </div>
    </div>
</div>

<%-- <div id="right-sidebar" class="settings-panel">
    <i class="settings-close mdi mdi-close"></i>
    <div class="d-flex align-items-center justify-content-between border-bottom">
        <p class="settings-heading font-weight-bold border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
    </div>
    <ul class="chat-list">
        <li class="list active">
            <div class="profile">
                <img src="<c:url value='/resources/assets/images/faces/face1.jpg' />" alt="image">
                <span class="online"></span>
            </div>
            <div class="info">
                <p>Thomas Douglas</p>
                <p>Available</p>
            </div>
            <small class="text-muted my-auto">19 min</small>
        </li>
        <li class="list">
            <div class="profile">
                <img src="<c:url value='/resources/assets/images/faces/face2.jpg' />" alt="image">
                <span class="offline"></span>
            </div>
            <div class="info">
                <div class="wrapper d-flex">
                    <p>Catherine</p>
                </div>
                <p>Away</p>
            </div>
            <div class="badge badge-success badge-pill my-auto mx-2">4</div>
            <small class="text-muted my-auto">23 min</small>
        </li>
        <li class="list">
            <div class="profile">
                <img src="<c:url value='/resources/assets/images/faces/face3.jpg' />" alt="image">
                <span class="online"></span>
            </div>
            <div class="info">
                <p>Daniel Russell</p>
                <p>Available</p>
            </div>
            <small class="text-muted my-auto">14 min</small>
        </li>
        <li class="list">
            <div class="profile">
                <img src="" alt="image"><c:url value='/resources/assets/images/faces/face4.jpg' />
                <span class="offline"></span>
            </div>
            <div class="info">
                <p>James Richardson</p>
                <p>Away</p>
            </div>
            <small class="text-muted my-auto">2 min</small>
        </li>
        <li class="list">
            <div class="profile">
                <img src="<c:url value='/resources/assets/images/faces/face5.jpg' />" alt="image">
                <span class="online"></span>
            </div>
            <div class="info">
                <p>Madeline Kennedy</p>
                <p>Available</p>
            </div>
            <small class="text-muted my-auto">5 min</small>
        </li>
        <li class="list">
            <div class="profile">
                <img src="<c:url value='/resources/assets/images/faces/face6.jpg' />" alt="image">
                <span class="online"></span>
            </div>
            <div class="info">
                <p>Sarah Graves</p>
                <p>Available</p>
            </div>
            <small class="text-muted my-auto">47 min</small>
        </li>
    </ul>
</div> --%>

<!-- left side bar start -->
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item nav-profile">
			<div class="nav-link">
				<div class="user-wrapper">
					<div class="profile-image">
						<img src="<c:url value='/resources/assets/images/faces/choi.jpg'/>" alt="profile-image" />
					</div>
					<div class="text-wrapper">
						<p class="profile-name">Choi</p>
						<div>
							<small class="designation text-muted">Second Administrator</small>
							<span class="status-indicator online"></span>
						</div>
					</div>
				</div>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#animal_tab">
				<img src="<c:url value='/resources/images/1.png'/>" />
				<span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;동물</span>
				<i class="menu-arrow"></i>
			</a>
			<div class="collapse" id="animal_tab">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/dog/main.aw'/>">
							<img src="<c:url value='/resources/images/animal/dog.png'/>" />&nbsp;&nbsp;&nbsp;강아지
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/cat/main.aw'/>">
							<img src="<c:url value='/resources/images/animal/cat.png'/>" />&nbsp;&nbsp;&nbsp;고양이
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/rna/main.aw'/>">
							<img src="<c:url value='/resources/images/animal/reptiles.png'/>" />&nbsp;&nbsp;&nbsp;파충류&양서류
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/bird/main.aw'/>">
							<img src="<c:url value='/resources/images/animal/bird.png'/>" />&nbsp;&nbsp;&nbsp;조류
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/etc/main.aw'/>">
							<img src="<c:url value='/resources/images/animal/rat.png'/>" />&nbsp;&nbsp;&nbsp;기타 포유류
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/freeboard.aw'/>">&nbsp;&nbsp;&nbsp;자유 게시판</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#market_tab">
				<img src="<c:url value='/resources/images/money.jpg'/>" />
				<span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장터</span>
				<i class="menu-arrow"></i>
			</a>
			<div class="collapse" id="market_tab">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/buy.aw'/>">&nbsp;&nbsp;&nbsp;삽니다</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/sell.aw'/>">&nbsp;&nbsp;&nbsp;팝니다</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="">&nbsp;&nbsp;&nbsp;공동 구매</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#shelter_tab">
				<img src="<c:url value='/resources/images/shelter.jpg'/>" />
				<span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;유기동물</span>
				<i class="menu-arrow"></i>
			</a>
			<div class="collapse" id="shelter_tab">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item">
						<a class="nav-link" href="">&nbsp;&nbsp;&nbsp;봤어요</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="">&nbsp;&nbsp;&nbsp;찾아요</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="">&nbsp;&nbsp;&nbsp;보호소</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#">
				<img src="<c:url value='/resources/images/heart.png'/>" />
				<span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;만나요</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#location_tab">
				<img src="<c:url value='/resources/images/location.png'/>" />
				<span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;위치 서비스</span>
				<i class="menu-arrow"></i>
			</a>
			<div class="collapse" id="location_tab">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item">
						<a class="nav-link" href="">&nbsp;&nbsp;&nbsp;지도</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="">&nbsp;&nbsp;&nbsp;예약 목록</a>
					</li>
				</ul>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#member_tab">
				<img src="<c:url value='/resources/images/member.png'/>" />
				<span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원관리</span>
				<i class="menu-arrow"></i>
			</a>
			<div class="collapse" id="member_tab">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/memberInfo.aw'/>">회원 정보</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/animalInfo.aw'/>">동물 정보</a>
					</li>
				</ul>
			</div>
		</li>

		<li class="nav-item">
            <a class="nav-link" href="<c:url value='/notice.aw'/>">
                <i class="menu-icon mdi mdi-flag-outline"></i>
                <span class="menu-title">공지사항</span>
            </a>
        </li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#administrator_tab">
				<i class="menu-icon mdi mdi-cube-outline"></i>
				<span class="menu-title">관리자 관리</span>
				<i class="menu-arrow"></i>
			</a>
			<div class="collapse" id="administrator_tab">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item">
						<a class="nav-link" href="">관리자 명단</a>
					</li>
				</ul>
			</div>
		</li>
	</ul>
</nav>
<!-- left side bar end -->