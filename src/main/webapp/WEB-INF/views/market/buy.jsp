<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">삽니다</h4>
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>동물분류</th>
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
									<td>${item.no }</td>
									<td>${item.animal_name }</td>
									<td>${item.title }</td>
									<td>${item.mem_nickname}</td>
									<td>${item.regidate}</td>
									<td>${item.count}</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${not result }">
							<tr>
								<td colspan="6" style="text-align: center;">등록 된 글이 없습니다.</td>
							</tr>
						</c:if>
					</tbody>
				</table>
				<!-- 페이징 -->
						<!-- <nav>
							<ul class="pagination rounded-flat pagination-success d-flex justify-content-center">
								<li class="page-item">
									<a class="page-link" href="#">
										<i class="fa fa-angle-double-left"></i>
									</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">
										<i class="fa fa-angle-left"></i>
									</a>
								</li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item">
									<a class="page-link" href="#">
										<i class="fa fa-angle-right"></i>
									</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">
										<i class="fa fa-angle-double-right"></i>
									</a>
								</li>
							</ul>
						</nav> -->
						<%-- ${pagingString} --%>
						<nav>
							<ul class='pagination rounded-flat pagination-success d-flex justify-content-center'>
								<li class='page-item'>
									<a href='#'>1</a>
								</li>
								<li class='page-item'>
									<a class='page-link' href='buy.aw?nowPage=2'>2</a>
								</li>
								<li class='page-item'>
									<a class='page-link' href='buy.aw?nowPage=3'>3</a>
								</li>
							</ul>
						</nav>
				<!-- 페이징 끝 -->

			</div>
		</div>
	</div>
</div>
<!-- row -->