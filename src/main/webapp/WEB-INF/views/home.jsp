<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--  
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
-->

<div class="row">
  <div class="col-md-7 grid-margin">
    <div class="row">
      <div class="col-12 col-sm-6 col-md-5 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <h2 class="mb-0">19,999,999,999명</h2>
	          <p class="text-gray">전체 방문자 수</p>
	          <canvas id="dashoard-line-chart" height="165"></canvas>
          </div>
        </div>
      </div>
      <div class="col-12 col-sm-6 col-md-7 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <p class="font-weight-medium">Sales Statistics</p>
            <div class="d-flex justify-content-between mt-2">
              <small class="text-muted">Dashboard</small>
              <small class="text-info">73%</small>
            </div>
            <div class="progress progress-md mt-2">
              <div class="progress-bar bg-info" role="progressbar" style="width: 73%" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <p class="mt-4 font-weight-medium">Monthly Sales</p>
            <div class="d-flex justify-content-between mt-2">
              <small class="text-muted">Charts</small>
              <small class="text-primary">30%</small>
            </div>
            <div class="progress progress-md mt-2">
              <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Visitors Statistics</h4>
            <canvas id="dashboard-bar-chart" height="100"></canvas>
            <div class="row dashboard-bar-chart-legend mt-5 mb-3">
              <div class="col">
                <h2>13</h2>
                <small class="text-muted">SNOOZED</small>
                <div class="bg"></div>
              </div>
              <div class="col">
                <h2>45</h2>
                <small class="text-muted">COMPLETED</small>
                <div class="bg"></div>
              </div>
              <div class="col">
                <h2>24</h2>
                <small class="text-muted">OVERDUE</small>
                <div class="bg"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-5 grid-margin">
    <div class="row">
      <div class="col-md-12 grid-margin">
        <div class="card bg-warning text-white">
          <div class="card-body">
            <div class="d-flex align-items-center justify-content-between">
               <div>
                <h3 class="mb-0 font-weight-bold" id="weather_city">서울</h3>
                <small class="font-weight-light">DAY - 12:07 PM</small>
              </div>
              <div class="d-flex align-items-center">
                <h1 class="mr-3 font-weight-bold"><p id="weather_cel"></p></h1>
                <img src="#" id="weather_img" />
              </div> 
 				
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-12">
        <div class="card">
          <div class="card-body">
            <p class="text-gray">2018 10/11  목요일</p>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
            	오늘의 동물<br/>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <div class="d-flex">
          <i class="mdi mdi-file-outline icon-lg"></i>
          <div class="d-flex flex-column ml-2">
            <span class="d-flex flex-column">
              <small class="mb-0">전체 게시글 등록수</small>
              <p class="font-weight-bold">25개</p>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <div class="d-flex">
          <i class="mdi mdi-account-outline icon-lg"></i>
          <div class="d-flex flex-column ml-2">
            <span class="d-flex flex-column">
              <small class="mb-0">전체 회원수</small>
              <p class="font-weight-bold">30</p>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <div class="d-flex">
          <i class="mdi mdi-laptop icon-lg"></i>
          <div class="d-flex flex-column ml-2">
            <span class="d-flex flex-column">
              <small class="mb-0">오늘의 게시글 등록수</small>
              <p class="font-weight-bold">74</p>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <div class="d-flex">
          <i class="mdi mdi-earth icon-lg"></i>
          <div class="d-flex flex-column ml-2">
            <span class="d-flex flex-column">
              <small class="mb-0">오늘의 방문자</small>
              <p class="font-weight-bold">440</p>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


