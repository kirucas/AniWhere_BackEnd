<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">조류</h4>
                <div class="row">
                    <div class="col-md-12 pl-md-11">
                        <ul class="nav nav-tabs tab-basic" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="phototab" title="bird" data-toggle="tab" href="#photo" role="tab" aria-controls="birdPhoto" aria-selected="true">사진</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="movietab" title="bird" data-toggle="tab" href="#movie" role="tab" aria-controls="birdMovie" aria-selected="false">동영상</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="tiptab" title="bird" data-toggle="tab" href="#tip" role="tab" aria-controls="birdTip" aria-selected="false">팁</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="qnatab" title="bird" data-toggle="tab" href="#qna" role="tab" aria-controls="birdQna" aria-selected="false">Q&A</a>
                            </li>
                        </ul>
                        <div class="tab-content tab-content-basic">
                            <div class="tab-pane fade show active" id="photo" role="tabpanel" aria-labelledby="bird_photo">
                                 <table class="table">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>글쓴이</th>
                                            <th>날짜</th>
                                            <th>조회수</th>
                                            <th>추천수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td colspan="6" style="text-align: center">구분선</td>
                                        </tr>
                                        <c:if test="${not empty list}" var="photoCheck">
	                                        <c:forEach items="${list }" var="item">
	                                        	<tr>
	                                        		<td>${item.photo_no}</td>
	                                        		<td>${item.photo_title }</td>
	                                        		<td>${item.mem_nickname }</td>
	                                        		<td>${item.photo_regidate }</td>
	                                        		<td>${item.photo_count }</td>
	                                        		<td>${item.photo_hit }</td>
	                                        	</tr>
	                                        </c:forEach>
                                        </c:if>
                                        <c:if test="${not photoCheck}">
                                        	<tr>
                                        		<td colspan="6" style="text-align: center;">현재 등록된 글이 없습니다.</td>
                                        	</tr>
                                        </c:if>
                                    </tbody>
                                </table>
                                 <!-- 페이징 -->
                                 <div class="container" style="text-align:center;">
                                 <div class="row" style="display:inline-block;">
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
                                 </div>
                                 <!-- 페이징 끝 -->

                            </div>
                            <div class="tab-pane fade" id="movie" role="tabpanel" aria-labelledby="bird_movie">
                            	<table class="table">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>날짜</th>
                                            <th>조회수</th>
                                            <th>추천수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="tip" role="tabpanel" aria-labelledby="bird_tip">
                            	<table class="table">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>날짜</th>
                                            <th>조회수</th>
                                            <th>추천수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="qna" role="tabpanel" aria-labelledby="bird_qna">
                            	<table class="table">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>날짜</th>
                                            <th>조회수</th>
                                            <th>추천수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- row -->