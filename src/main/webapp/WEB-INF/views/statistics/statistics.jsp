<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- partial -->
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
	            <h4 class="card-title">방문자 통계</h4>
	            <canvas id="dashboard-bar-chart" height="100"></canvas>
	            <div class="row dashboard-bar-chart-legend mt-5 mb-3">
	              <div class="col">
	                <h2>13</h2>
	                <small class="text-muted">방문</small>
	                <div class="bg"></div>
	              </div>
	              <div class="col">
	                <h2>45</h2>
	                <small class="text-muted">댓글</small>
	                <div class="bg"></div>
	              </div>
	              <div class="col">
	                <h2>24</h2>
	                <small class="text-muted">게시판 글</small>
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
	       <div class="col-md-12 grid-margin stretch-card">
	         <div class="card">
	           <div class="card-body">
	             <h4 class="card-title">동물 종류별 통계</h4>
	             <div class="google-chart-container">
	               <div id="Donut-chart" class="google-charts"></div>
	             </div>
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
	          <i class="mdi mdi-clock icon-lg"></i>
	          <div class="d-flex flex-column ml-2">
	            <span class="d-flex flex-column">
	              <small class="mb-0">BOUNCE RATE</small>
	              <p class="font-weight-bold">32.16%</p>
	            </span>
	            <small>65.45% on average time</small>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	  <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
	    <div class="card">
	      <div class="card-body">
	        <div class="d-flex">
	          <i class="mdi mdi-cart-outline icon-lg"></i>
	          <div class="d-flex flex-column ml-2">
	            <span class="d-flex flex-column">
	              <small class="mb-0">TODAY SALES</small>
	              <p class="font-weight-bold">$489,271</p>
	            </span>
	            <small>$489,271 before tax</small>
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
	              <small class="mb-0">UNIQUE VISITS</small>
	              <p class="font-weight-bold">74.50%</p>
	            </span>
	            <small>80% average duration</small>
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
	              <small class="mb-0">TODAY'S VISITS</small>
	              <p class="font-weight-bold">6,775,440</p>
	            </span>
	            <small>45% higher yesterday</small>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-6 grid-margin stretch-card">
	    <div class="card">
	      <div class="card-body">
	        <div class="d-flex justify-content-between border-bottom">
	          <h4 class="card-title">Daily Earnings</h4>
	          <i class="mdi mdi-trending-down"></i>
	        </div>
	        <div class="wrapper pt-4">
	          <div class="d-flex justify-content-center align-items-center mb-4">
	            <div id="dashboardTrendingProgress"></div>
	            <h2 class="mb-0 ml-3 font-weight-bold">456</h2>
	          </div>
	          <div class="text-center">
	            <div class="btn btn-inverse-danger">5% Decrease</div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	  <div class="col-md-6 grid-margin stretch-card">
	    <div class="card">
	      <div class="card-body">
	        <div class="d-flex justify-content-between border-bottom">
	          <h4 class="card-title">Marketing Campaign</h4>
	          <i class="mdi mdi-trending-up"></i>
	        </div>
	        <div class="wrapper pt-4">
	          <div class="d-flex justify-content-center align-items-end mb-4">
	            <div class="w-25">
	              <canvas id="dashboardTrendingBars" height="180"></canvas>
	            </div>
	            <h2 class="mb-0 ml-3 font-weight-bold">760</h2>
	          </div>
	          <div class="text-center">
	            <div class="btn btn-inverse-success">5% Increase</div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	


