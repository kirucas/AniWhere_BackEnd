<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
</style>
<!-- partial -->
<div class="row">
	<div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">통계</h4>
                <div class="row">
                    <div class="col-md-12 pl-md-11">
                        <ul class="nav nav-tabs tab-basic" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="statistics_all" data-toggle="tab" href="#statisticsAll" role="tab" aria-controls="statisticsAll" aria-selected="true">전체</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="statistics_dog" data-toggle="tab" href="#statisticsDog" role="tab" aria-controls="statisticsDog" aria-selected="false">강아지</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="statistics_cat" data-toggle="tab" href="#statisticsCat" role="tab" aria-controls="statisticsCat" aria-selected="false">고양이</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="statistics_rna" data-toggle="tab" href="#statisticsRna" role="tab" aria-controls="statisticsRna" aria-selected="false">파충류&양서류</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="statistics_bird" data-toggle="tab" href="#statisticsBird" role="tab" aria-controls="statisticsBird" aria-selected="false">조류</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="statistics_etc" data-toggle="tab" href="#statisticsEtc" role="tab" aria-controls="statisticsEtc" aria-selected="false">기타 포유류</a>
                            </li>
                        </ul>
                        <div class="tab-content tab-content-basic">
                        <!-- 전체 통계 -->
                        <div class="tab-pane fade show active" id="statisticsAll" role="tabpanel" aria-labelledby="statistics_all">
                            <div class="col-md-12 grid-margin" style="padding-top:50px;">
							    <div class="row">
	       							<div class="col-md-12 grid-margin stretch-card">
						                    <div class="col-md-12">
							                    <div class="google-chart-container d-flex justify-content-center h-100">
							                      <div id="member-chart" class="google-charts"></div>
							                    </div>
						                    </div>
						              </div>
						              <div class="col-md-6 grid-margin<!--  stretch-card -->">
						                    <div class="google-chart-container d-flex align-items-center justify-content-center h-100">
						                      <div id="board-chart" class="google-charts"></div>
						                    </div>
						              </div>
						               <div class="col-md-6 grid-margin stretch-card">
								             <div class="google-chart-container">
								               <div id="animal-chart" class="google-charts"></div>
								             </div>
								       </div>
						              <div class="col-md-6 grid-margin stretch-card">
						                    <div class="google-chart-container d-flex align-items-center justify-content-center h-100">
						                      <div id="mating-chart" class="google-charts"></div>
						                    </div>
						              </div>
						              <div class="col-md-6 grid-margin stretch-card">
						                    <div class="google-chart-container d-flex align-items-center justify-content-center h-100">
						                      <div id="miss-chart" class="google-charts"></div>
						                    </div>
						              </div>
						              <div class="col-md-12 grid-margin stretch-card">
						              	<div class="col-md-12">
						                    <div class="google-chart-container d-flex justify-content-center h-100">
						                      <div id="reservation-chart" class="google-charts"></div>
						                    </div>
						                 </div>
						              </div>
							     </div><!-- row -->
							</div>

                           </div><!-- tap -->
                            <!-- 전체 통계 끝 -->
                            
                            <!-- 강아지 통계 시작 -->
                            <div class="tab-pane fade" id="statisticsDog" role="tabpanel" aria-labelledby="statistics_dog">
	                            <div class="col-md-12 grid-margin">
								    <div class="row">
										<div class="col-md-12 grid-margin stretch-card">
											<div class="col-md-12">
							                    <div class="google-chart-container d-flex justify-content-center h-100">
							                      <div id="dog-board-chart" class="google-charts"></div>
							                    </div>
						                    </div>
							              </div>
									</div><!-- row -->
								</div><!-- col-md-12 -->
                            </div><!-- tab-pane -->
                            <!-- 강아지 통계 끝 -->
                            
                            
                            <!-- 고양이 통계 시작 -->
                            <div class="tab-pane fade" id="statisticsCat" role="tabpanel" aria-labelledby="statistics_cat">
								고양이 통계 위치
                            </div>
                            <!-- 고양이 통계 끝 -->
                            
                            
                            <!-- 파양 통계 시작 -->
                            <div class="tab-pane fade" id="statisticsRna" role="tabpanel" aria-labelledby="statistics_rna">
                                	파충류&양서류 통계 위치
                            </div>
                            <!-- 파양 통계 끝 -->
                            
                            
                            <!-- 조류 통계 시작 -->
                            <div class="tab-pane fade" id="statisticsBird" role="tabpanel" aria-labelledby="statistics_bird">
                                	조류 통계 위치
                            </div>
                            <!-- 조류 통계 끝 -->
                            
                            
                            <!-- 기타 포유류 통계 시작 -->
                            <div class="tab-pane fade" id="statisticsEtc" role="tabpanel" aria-labelledby="statistics_etc">
                                	기타 포유류 통계 위치
                            </div>
                            <!-- 기타 포유류 통계 끝 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	  
</div>	


