<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                        <div class="tab-pane fade show active" id="statisticsAll" role="tabpanel" aria-labelledby="statistics_all">
                            <div class="col-md-5 grid-margin">
							    <div class="row">
							       <div class="col-md-12 grid-margin stretch-card">
							         <div class="card">
							           <div class="card-body">
							             <h4 class="card-title">전체 동물 종류별 통계</h4>
							             <div class="google-chart-container">
							               <div id="Donut-chart" class="google-charts"></div>
							             </div>
							           </div>
							         </div>
							       </div>
							     </div>
							</div>
                            </div>
                            <div class="tab-pane fade" id="statisticsDog" role="tabpanel" aria-labelledby="statistics_dog">
								강아지 통계 위치
                            </div>
                            <div class="tab-pane fade" id="statisticsCat" role="tabpanel" aria-labelledby="statistics_cat">
								고양이 통계 위치
                            </div>
                            <div class="tab-pane fade" id="statisticsRna" role="tabpanel" aria-labelledby="statistics_rna">
                                	파충류&양서류 통계 위치
                            </div>
                            <div class="tab-pane fade" id="statisticsBird" role="tabpanel" aria-labelledby="statistics_bird">
                                	조류 통계 위치
                            </div>
                            <div class="tab-pane fade" id="statisticsEtc" role="tabpanel" aria-labelledby="statistics_etc">
                                	기타 포유류 통계 위치
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	  
</div>	


