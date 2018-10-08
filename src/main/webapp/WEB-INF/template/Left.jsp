<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.table tr th{
		font-family:메이플스토리;
	}
	.card-description{
		font-family:메이플스토리;
	}
	.card-title{	
		font-family:메이플스토리;
	}
	.nav-link{
		font-family:메이플스토리;
	}
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

<div id="right-sidebar" class="settings-panel">
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
</div>

<!-- left side bar -->
<!-- Side nav 시작 -->
<!-- Right Side Bar -->
<div class="container-fluid page-body-wrapper">
  <!-- partial:partials/_settings-panel.html -->
  <div class="theme-setting-wrapper">
    <div id="theme-settings" class="settings-panel">
      <i class="settings-close mdi mdi-close"></i>
      <div class="d-flex align-items-center justify-content-between border-bottom">
        <p class="settings-heading font-weight-bold border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Template Skins</p>
      </div>
      <div class="sidebar-bg-options selected" id="sidebar-light-theme">
        <div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
      <div class="sidebar-bg-options" id="sidebar-dark-theme">
        <div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
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
  <div id="right-sidebar" class="settings-panel">
    <i class="settings-close mdi mdi-close"></i>
    <div class="d-flex align-items-center justify-content-between border-bottom">
      <p class="settings-heading font-weight-bold border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
    </div>
    <ul class="chat-list">
      <li class="list active">
        <div class="profile">
          <img src="<c:url value='/resources/assets/images/faces/face1.jpg'/>" alt="image">
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
          <img src="<c:url value='/resources/assets/images/faces/face2.jpg'/>" alt="image">
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
          <img src="<c:url value='/resources/assets/images/faces/face3.jpg'/>" alt="image">
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
          <img src="<c:url value='/resources/assets/images/faces/face4.jpg'/>" alt="image">
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
          <img src="<c:url value='/resources/assets/images/faces/face5.jpg'/>" alt="image">
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
          <img src="<c:url value='/resources/assets/images/faces/face6.jpg'/>" alt="image">
          <span class="online"></span>
        </div>
        <div class="info">
          <p>Sarah Graves</p>
          <p>Available</p>
        </div>
        <small class="text-muted my-auto">47 min</small>
      </li>
    </ul>
  </div>
  <!-- Right Side bar -->
  
  
  
  <!-- Left Side bar -->
  <nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
    
    	<!-- 로그인 프로필 -->
      <li class="nav-item nav-profile">
        <div class="nav-link">
          <div class="user-wrapper">
            <div class="profile-image">
              <img src="<c:url value='/resources/assets/images/faces/choi.jpg'/>" alt="profile image"> </div>
            <div class="text-wrapper">
              <p class="profile-name">최성욱</p>
              <div>
                <small class="designation text-muted">개쩌리</small>
                <span class="status-indicator online"></span>
              </div>
            </div>
          </div>
          
        </div>
      </li>
      <!-- 로그인 프로필 끝 -->
      
      <!-- 동물 메뉴 -->
      <li class="nav-item">
        <a class="nav-link" data-toggle="collapse" href="#animal" aria-expanded="false" aria-controls="dashboard-dropdown">
          <img src="<c:url value='/resources/images/1.png'/>" style="height:100%"/>
          <span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;동물</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="animal">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item">
              <a class="nav-link" href="<c:url value='/dog/main.aw'/>">
              	<img src="<c:url value='/resources/images/animal/dog.png'/>" style="width:30px;height:30px"/>&nbsp;&nbsp;강아지
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<c:url value='/cat/main.aw'/>">
              	<img src="<c:url value='/resources/images/animal/cat.png'/>" style="width:30px;height:30px"/>&nbsp;&nbsp;고양이
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<c:url value='/rna/main.aw'/>">
              	<img src="<c:url value='/resources/images/animal/reptiles.png'/>" style="width:30px;height:30px"/>&nbsp;&nbsp;파충류&양서류
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<c:url value='/bird/main.aw'/>">
              	<img src="<c:url value='/resources/images/animal/bird.png'/>" style="width:30px;height:30px"/>&nbsp;&nbsp;조류
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<c:url value='/etc/main.aw'/>">
              	<img src="<c:url value='/resources/images/animal/rat.png'/>" style="width:30px;height:30px"/>&nbsp;&nbsp;기타 포유류
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<c:url value='/freeboard.aw'/>">
              	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              	자유 게시판
              </a>
            </li>
          </ul>
        </div>
      </li>
      <!-- 동물 메뉴 끝 -->
      
      <!-- 장터 메뉴 -->
      <li class="nav-item">
        <a class="nav-link" data-toggle="collapse" href="#market" aria-expanded="false" aria-controls="dashboard-dropdown">
          <!-- <i class="menu-icon mdi mdi-television"></i> -->
          <img src="<c:url value='/resources/images/money.jpg'/>" style="height:100%"/>
          <span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;장터</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="market">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;삽니다
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;팝니다
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;공동구매
              </a>
            </li>
          </ul>
        </div>
      </li>
<!-- 장터 메뉴 끝 -->

<!-- 유기동물 메뉴 시작 -->
<li class="nav-item">
           <a class="nav-link" data-toggle="collapse" href="#shelter" aria-expanded="false" aria-controls="dashboard-dropdown">
             
          <img src="<c:url value='/resources/images/shelter.jpg'/>" style="height:100%"/>
          <span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;유기동물</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="shelter">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;봤어요
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;찾아요
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;보호소
              </a>
            </li>
          </ul>
        </div>
      </li>
<!-- 유기동물 메뉴 끝 -->

<!-- 교배 메뉴 시작 -->
      <li class="nav-item">
        <a class="nav-link" href="#">
          <img src="<c:url value='/resources/images/heart.png'/>" style="height:100%"/>
          <span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;만나요</span>
        </a>
      </li>
      <!-- 교배 메뉴 끝 -->
      
      <!-- 위치 메뉴 시작 -->
      <li class="nav-item">
        <a class="nav-link" data-toggle="collapse" href="#dashboard-dropdown" aria-expanded="false" aria-controls="dashboard-dropdown">
          <!-- <i class="menu-icon mdi mdi-television"></i> -->
          <img src="<c:url value='/resources/images/location.png'/>" style="height:100%"/>
          <span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;위치 서비스</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="dashboard-dropdown">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;병원
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;호텔
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;용품
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;분양
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;놀이
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;산책
              </a>
            </li>
          </ul>
        </div>
      </li>
      <!-- 위치 메뉴 끝 -->
      
      <!-- 회원정보 메뉴 시작 -->
      <li class="nav-item">
        <a class="nav-link" data-toggle="collapse" href="#memberinfo" aria-expanded="false" aria-controls="dashboard-dropdown">
          <img src="<c:url value='/resources/images/member.png'/>" style="height:100%"/>
          <span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;회원 관리</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="memberinfo">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item">
              <a class="nav-link" href="<c:url value='/memberInfo.aw'/>">
              	&nbsp;&nbsp;회원 정보
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
              	&nbsp;&nbsp;동물 정보
              </a>
            </li>
          </ul>
        </div>
      </li>
      <!-- 회원정보 메뉴 끝 -->
      
      <!-- 공지사항 메뉴 시작 -->
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="menu-icon mdi mdi-flag-outline"></i>
          <span class="menu-title">공지사항</span>
        </a>
      </li>
      <!-- 공지사항 메뉴 끝 -->
      
    </ul>
  </nav>
  <!-- Left Side Nav 끝 -->