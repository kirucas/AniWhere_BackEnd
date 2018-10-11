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
            <h2 class="mb-0">230</h2>
            <p class="text-gray">All Transactions</p>
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
                <h3 class="mb-0 font-weight-bold">New York</h3>
                <small class="font-weight-light">DAY - 12:07 PM</small>
              </div>
              <div class="d-flex align-items-center">
                <h1 class="mr-3 font-weight-bold">34°</h1>
                <i class="icon-md mdi mdi-weather-rainy"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-12">
        <div class="card">
          <div class="card-body">
            <p class="text-gray">TUESDAY, APR 9, 2018</p>
            <ul class="bullet-line-list pb-3">
              <li>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="d-flex">
                    <img class="img-xs rounded-circle" src="../../../assets/images/faces/face9.jpg" alt="profile image">
                    <div class="ml-3">
                      <h6 class="mb-0">Snapchat Hosts</h6>
                      <small class="text-muted"> Admin Dashboard </small>
                    </div>
                  </div>
                  <div>
                    <small class="d-block mb-0">06</small>
                    <small class="text-muted d-block">pm</small>
                  </div>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="d-flex">
                    <img class="img-xs rounded-circle" src="../../../assets/images/faces/face3.jpg" alt="profile image">
                    <div class="ml-3">
                      <h6 class="mb-0">Revise Wireframes</h6>
                      <small class="text-muted"> Company website </small>
                    </div>
                  </div>
                  <div>
                    <small class="d-block mb-0">11</small>
                    <small class="text-muted d-block">pm</small>
                  </div>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="d-flex">
                    <img class="img-xs rounded-circle" src="../../../assets/images/faces/face4.jpg" alt="profile image">
                    <div class="ml-3">
                      <h6 class="mb-0">Expert instruction</h6>
                      <small class="text-muted"> Profile App </small>
                    </div>
                  </div>
                  <div>
                    <small class="d-block mb-0">12</small>
                    <small class="text-muted d-block">pm</small>
                  </div>
                </div>
              </li>
            </ul>
            <p class="text-gray mt-4">TUESDAY, APR 10, 2018</p>
            <ul class="bullet-line-list">
              <li>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="d-flex">
                    <img class="img-xs rounded-circle" src="../../../assets/images/faces/face7.jpg" alt="profile image">
                    <div class="ml-3">
                      <h6 class="mb-0">Great Logo</h6>
                      <small class="text-muted"> admin logo </small>
                    </div>
                  </div>
                  <div>
                    <small class="d-block mb-0">04</small>
                    <small class="text-muted d-block">pm</small>
                  </div>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="d-flex">
                    <img class="img-xs rounded-circle" src="../../../assets/images/faces/face25.jpg" alt="profile image">
                    <div class="ml-3">
                      <h6 class="mb-0">Branding Mockup</h6>
                      <small class="text-muted"> Company website </small>
                    </div>
                  </div>
                  <div>
                    <small class="d-block mb-0">08</small>
                    <small class="text-muted d-block">pm</small>
                  </div>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="d-flex">
                    <img class="img-xs rounded-circle" src="../../../assets/images/faces/face12.jpg" alt="profile image">
                    <div class="ml-3">
                      <h6 class="mb-0">Awesome Mobile App</h6>
                      <small class="text-muted"> Profile App </small>
                    </div>
                  </div>
                  <div>
                    <small class="d-block mb-0">09</small>
                    <small class="text-muted d-block">pm</small>
                  </div>
                </div>
              </li>
            </ul>
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
<div class="row">
  <div class="col-12 grid-margin">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Ticket Comments</h4>
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>Assigned</th>
                <th>Latest Comment</th>
                <th>Last reply</th>
                <th>Impact</th>
                <th>Status</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <div class="form-check form-check-flat">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input">
                      <img class="mr-2" src="../../../assets/images/faces/face14.jpg" alt="profile image"> Benjamin Bowman </label>
                  </div>
                </td>
                <td>How To Write Better Advertising Copy</td>
                <td>10-12-2018</td>
                <td>$15,000</td>
                <td>
                  <div class="badge badge-success"></div>Active</td>
              </tr>
              <tr>
                <td>
                  <div class="form-check form-check-flat">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input" checked>
                      <img class="mr-2" src="../../../assets/images/faces/face4.jpg" alt="profile image"> Mark Pope </label>
                  </div>
                </td>
                <td>Influencing The Influencer</td>
                <td>10-12-2018</td>
                <td>$210,000</td>
                <td>
                  <div class="badge badge-danger"></div>Closed</td>
              </tr>
              <tr>
                <td>
                  <div class="form-check form-check-flat">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input">
                      <img class="mr-2" src="../../../assets/images/faces/face7.jpg" alt="profile image"> Ian Brown </label>
                  </div>
                </td>
                <td>The Universe Through A Child S Eyes</td>
                <td>10-12-2018</td>
                <td>$543,000</td>
                <td>
                  <div class="badge badge-warning"></div>Pending</td>
              </tr>
              <tr>
                <td>
                  <div class="form-check form-check-flat">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input">
                      <img class="mr-2" src="../../../assets/images/faces/face9.jpg" alt="profile image"> Chase Mullins </label>
                  </div>
                </td>
                <td>Trade Show Promotions</td>
                <td>10-12-2018</td>
                <td>$925,000</td>
                <td>
                  <div class="badge badge-success"></div>Active</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
