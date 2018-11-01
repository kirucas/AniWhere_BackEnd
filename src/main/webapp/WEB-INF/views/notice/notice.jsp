<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty noticeDeleteResult}">
	<c:if test="${noticeDeleteResult eq 1 }" var="otherResult">
		<script>alert("삭제 성공 ㅇㅇ");</script>
	</c:if>
	<c:if test="${not otherResult}">
		<script>alert("삭제 실패 ㅉㅉ");</script>
	</c:if>
</c:if>

<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>

<div class="row">
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">공지사항</h4>
				<table class="table" id="tableform">
					<thead>
						<tr>
							<th>공지 번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody id="noticeBody">
						<c:if test="${not empty list}" var="result">
							<c:forEach items="${list}" var="item">
								<tr class="noticeContent" title="${item.no}" data-toggle="modal" data-target="#noticeOne">
									<td>${item.no}</td>
									<td>${item.title}</td>
									<td>${item.am_id}</td>
									<td>${item.regidate}</td>
									<td>${item.count}</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${not result}">
							<tr>
								<td colspan="5" style="text-align: center;">등록 된 공지 사항이 없습니다</td>
							</tr>
						</c:if>
					</tbody>
				</table>

				<!-- 페이징 -->
				${pagingString}
				<!-- 페이징 끝 -->
			</div>
		</div>
	</div>
</div>
<!-- row -->
<div class="modal fade" id="noticeOne" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-dialog-center" role="document">
		<div class="modal-content">
			<div class="modal-header">
			</div>
			<div class="modal-body">
			</div>
			<div class="modal-footer">
				<!-- <button class="btn btn-warning btn-fw" type="button" id="noticeEdit">수정</button>
				<button class="btn btn-danger btn-fw" type="button" id="noticeDelete">삭제</button> -->
			</div>
		</div>
	</div>
</div>