<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
@import '<c:url value="/resources/css/table_css.css" />';
</style>
<div class="row">
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">찾아요</h4>
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty list }" var="result">
							<c:forEach items="${list}" var="item">
								<tr>
									<td>${item.no}</td>
									<td>
										<span class="badge badge-info badge-pill">${item.animal_name }</span>
										<span class="badge badge-success badge-pill">${item.addr }</span>
										${item.title}
									</td>
									<td>${item.mem_nickname}</td>
									<td>${item.regidate}</td>
									<td>${item.count}</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${not result}">
							<tr>
								<td colspan="5" style="text-align: center;">등록 된 글이 없습니다</td>
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