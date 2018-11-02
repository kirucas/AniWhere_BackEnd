<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>
<!-- partial -->
<div class="card">
	<div class="card-body">
		<h4 class="card-title">예약 정보</h4>
		<div class="row">
			<div class="col-12">
				<table id="order-listing" class="table">
					<thead>
						<tr>
							<th>구분번호</th>
							<th>회원이름(회원번호)</th>
							<th>상호명(지점명)</th>
							<th>신청일</th>
							<th>예약일</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty list}" var="result">
							<c:forEach items="${list}" var="item">
								<tr>
									<td>${item.rv_no}</td>
									<td>${item.mem_name}(${item.mem_no})</td>
									<td>
										${item.bizesnm}
										<c:if test="${not empty item.brchnm}">
											(${item.brchnm})
										</c:if>
									</td>
									<td>${item.apply_date}</td>
									<td>${item.booking_date}</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${not result}">
							<tr>
								<td colspan="5" style="text-align: center;">등록 된 예약 목록이 없습니다</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>