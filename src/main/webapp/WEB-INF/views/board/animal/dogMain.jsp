<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">강아지</h4>
                <div class="row">
                    <div class="col-md-12 pl-md-11">
                        <ul class="nav nav-tabs tab-basic" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="dog_photo" data-toggle="tab" href="#dogPhoto" role="tab" aria-controls="dogPhoto" aria-selected="true">사진</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="dog_movie" data-toggle="tab" href="#dogMovie" role="tab" aria-controls="dogMovie" aria-selected="false">동영상</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="dog_tip" data-toggle="tab" href="#dogTip" role="tab" aria-controls="dogTip" aria-selected="false">팁</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="dog_qna" data-toggle="tab" href="#dogQna" role="tab" aria-controls="dogQna" aria-selected="false">Q&A</a>
                            </li>
                        </ul>
                        <div class="tab-content tab-content-basic">
                            <div class="tab-pane fade show active" id="dogPhoto" role="tabpanel" aria-labelledby="dog_photo">
                                <div class="col-lg-12 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">강아지</h4>
                                            <p class="card-description"> 사진 게시판 </p>
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>번호</th>
                                                        <th>카테고리</th>
                                                        <th>제목</th>
                                                        <th>글쓴이</th>
                                                        <th>날짜</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>자유</td>
                                                        <td>
															안녕하세요 샘플입니다. <label class="badge badge-success">20</label>
                                                        </td>
                                                        <td>최성욱</td>
                                                        <td>2018-10-04</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>자유</td>
                                                        <td>
															안녕하세요 샘플입니다. <label class="badge badge-success">15</label>
                                                        </td>
                                                        <td>최성욱</td>
                                                        <td>2018-10-04</td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>자유</td>
                                                        <td>
															안녕하세요 샘플입니다. <label class="badge badge-success">1</label>
                                                        </td>
                                                        <td>최성욱</td>
                                                        <td>2018-10-04</td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td>자유</td>
                                                        <td>안녕하세요 샘플입니다.</td>
                                                        <td>최성욱</td>
                                                        <td>2018-10-04</td>
                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td>자유</td>
                                                        <td>
															안녕하세요 샘플입니다. <label class="badge badge-success">99</label>
                                                        </td>
                                                        <td>최성욱</td>
                                                        <td>2018-10-04</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <!-- 페이징 -->
                                            <div class="row">
                                                <div class="col-md-12 text-center">
                                                    <nav>
                                                        <ul class="pagination rounded-flat pagination-success">
                                                            <li class="page-item">
                                                                <a class="page-link" href="#">
                                                                    <i class="mdi mdi-chevron-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="page-item active">
                                                                <a class="page-link" href="#">1</a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a class="page-link" href="#">2</a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a class="page-link" href="#">3</a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a class="page-link" href="#">4</a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a class="page-link" href="#">
                                                                    <i class="mdi mdi-chevron-right"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </nav>
                                                </div>
                                            </div>
                                            <!-- 페이징 끝 -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="dogMovie" role="tabpanel" aria-labelledby="dog_movie">
								동영상 게시판 위치
                            </div>
                            <div class="tab-pane fade" id="dogTip" role="tabpanel" aria-labelledby="dog_tip">
								팁 게시판 위치
                            </div>
                            <div class="tab-pane fade" id="dogQna" role="tabpanel" aria-labelledby="dog_qna">
                                Q&A 게시판 위치
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- row -->