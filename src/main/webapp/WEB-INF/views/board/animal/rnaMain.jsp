<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>
<div class="row">
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">파충류&양서류</h4>
                <div class="row">
                    <div class="col-md-12 pl-md-11">
                        <ul class="nav nav-tabs tab-basic" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="phototab" title="rna" data-toggle="tab" href="#photo" role="tab">사진</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="movietab" title="rna" data-toggle="tab" href="#movie" role="tab">동영상</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="tiptab" title="rna" data-toggle="tab" href="#tip" role="tab">팁</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="qnatab" title="rna" data-toggle="tab" href="#qna" role="tab">Q&A</a>
                            </li>
                        </ul>
                        <div class="tab-content tab-content-basic">
                            <div class="tab-pane fade show active" id="photo" role="tabpanel">
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
                                        <c:if test="${not empty list}" var="photoCheck">
                                            <c:forEach items="${list }" var="item">
                                                <tr>
                                                    <td>${item.no}</td>
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
                                                <td colspan="6" style="text-align: center;">등록 된 글이 없습니다</td>
                                            </tr>
                                        </c:if>
                                    </tbody>
                                </table>
                                <!-- 페이징 -->
                                <br />
                                <div id="pagingPhoto" title="rna">
                                    ${pagingString}
                                </div>
                                <!-- 페이징 끝 -->

                            </div>
                            <div class="tab-pane fade" id="movie" role="tabpanel">
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
                                    <tbody></tbody>
                                </table>
                                <br />
                                <div id="pagingMovie" title="rna"></div>
                            </div>
                            <div class="tab-pane fade" id="tip" role="tabpanel">
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
                                    <tbody></tbody>
                                </table>
                                <br />
                                <div id="pagingTip" title="rna"></div>
                            </div>
                            <div class="tab-pane fade" id="qna" role="tabpanel">
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
                                    <tbody></tbody>
                                </table>
                                <br />
                                <div id="pagingQna" title="rna"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- row -->