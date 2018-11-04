<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    div {
        font-family: 메이플스토리;
    }
</style>
<!-- partial -->
<div class="row">
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">통계</h4>
                <div class="row">
                    <div class="col-md-12 pl-md-11">
                        <!-- 전체 통계 -->
                        <div class="tab-pane fade show active" id="statisticsAll" role="tabpanel" aria-labelledby="statistics_all">
                            <div class="col-lg-12 grid-margin" style="padding-top:50px;">
                                <div class="row">
                                    <!-- <div class="col-md-12 grid-margin stretch-card">
                                          <div class="col-md-12">
                                              <div class="google-chart-container d-flex justify-content-center h-100">
                                                <div id="signup_chart" class="google-charts"></div>
                                              </div>
                                          </div>
                                    </div> -->
                                    <div class="col-md-6 grid-margin stretch-card">
                                        <div class="col-md-12">
                                            <div class="google-chart-container d-flex justify-content-center h-100">
                                                <div id="board_regi_chart" class="google-charts"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 grid-margin stretch-card">
                                        <div class="col-md-12">
                                            <div class="google-chart-container d-flex justify-content-center h-100">
                                                <div id="ani_category_chart" class="google-charts"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="col-md-6 grid-margin stretch-card">
                                      <div class="col-md-12">
                                          <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="mating-chart" class="google-charts"></div>
                                          </div>
                                          </div>
                                    </div>
                                    <div class="col-md-6 grid-margin stretch-card">
                                      <div class="col-md-12">
                                          <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="miss-chart" class="google-charts"></div>
                                          </div>
                                          </div>
                                    </div> -->
                                    <br />
                                    <div class="col-md-12 grid-margin stretch-card">
                                        <div class="col-md-12">
                                            <div class="google-chart-container d-flex justify-content-center h-100">
                                                <div id="reservation_apply_chart" class="google-charts"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- row -->
                            </div>

                        </div><!-- tap -->
                        <!-- 전체 통계 끝 -->
                        <!-- 강아지 통계 시작 -->
                        <h4 class="card-title" style="margin-top:50px">강아지 통계</h4>
                        <div class="col-md-12 grid-margin">
                            <div class="row">
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="dog-board-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="dog-all-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- row -->
                        </div><!-- col-md-12 -->
                        <!-- 강아지 통계 끝 -->
                        <!-- 고양이 통계 시작 -->
                        <h4 class="card-title" style="margin-top:50px">고양이 통계</h4>
                        <div class="col-md-12 grid-margin">
                            <div class="row">
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="cat-board-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="cat-all-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- row -->
                        </div><!-- col-md-12 -->
                        <!-- 고양이 통계 끝 -->
                        <!-- 파양 통계 시작 -->
                        <h4 class="card-title" style="margin-top:50px">파충류&양서류 통계</h4>
                        <div class="col-md-12 grid-margin">
                            <div class="row">
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="rna-board-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="rna-all-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- row -->
                        </div><!-- col-md-12 -->
                        <!-- 파양 통계 끝 -->
                        <!-- 조류 통계 시작 -->
                        <h4 class="card-title" style="margin-top:50px">조류 통계</h4>
                        <div class="col-md-12 grid-margin">
                            <div class="row">
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="bird-board-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="bird-all-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- row -->
                        </div><!-- col-md-12 -->
                        <!-- 조류 통계 끝 -->
                        <!-- 기타 포유류 통계 시작 -->
                        <h4 class="card-title" style="margin-top:50px">기타 포유류 통계</h4>
                        <div class="col-md-12 grid-margin">
                            <div class="row">
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="etc-board-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="col-md-12">
                                        <div class="google-chart-container d-flex justify-content-center h-100">
                                            <div id="etc-all-chart" class="google-charts"></div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- row -->
                        </div><!-- col-md-12 -->
                        <!-- 기타 포유류 통계 끝 -->
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


