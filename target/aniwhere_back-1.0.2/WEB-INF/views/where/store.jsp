<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>
<!-- partial -->
<div class="card">
    <div class="card-body">
        <h4 class="card-title">업체 정보</h4>
        <div class="row">
            <div class="col-12">
            	<ul class="nav nav-tabs tab-solid tab-solid-info" role="tablist">
            		<li class="nav-item">
            			<a class="nav-link active show" data-toggle="tab" id="allStore" href="#all" role="tab">전체 보기</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" data-toggle="tab" id="caffeStore" href="#caffe" role="tab">애견 카페</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" data-toggle="tab" id="beautyStore" href="#beauty" role="tab">애완 미용</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" data-toggle="tab" id="hospitalStore" href="#hospital" role="tab">동물 병원</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" data-toggle="tab" id="pharmacyStore" href="#pharmacy" role="tab">동물 약국</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" data-toggle="tab" id="etcStore" href="#etc" role="tab">동물 기타</a>
            		</li>
            	</ul>
            	<div class="tab-content tab-content-solid">
            		<div class="tab-pane fade active show" id="all" role="tabpanel">
						<table class="table">
							<thead>
								<tr>
									<th>상가 업소번호</th>
									<th>상호명(지점명)</th>
									<th>상권 업종 소분류명</th>
									<th>주소</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${not empty list}" var="result">
									<c:forEach items="${list}" var="item">
										<tr>
											<td>${item.bizesid}</td>
											<td>${item.bizesnm} ${item.brchnm}</td>
											<td>${item.indssclsnm}</td>
											<td>
												${item.rdnmadr}
												<c:if test="${not empty item.dongno}">
													${item.dongno}동
												</c:if> 
												<c:if test="${not empty item.flrno}">
												${item.flrno}층 
												</c:if> 
												<c:if test="${not empty item.hono}">
												${item.hono}호
												</c:if> 
											</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${not result}">
									<tr>
										<td colspan="4" style="text-align: center;">등록 된 상가 정보가 없습니다</td>
									</tr>
								</c:if>
							</tbody>
						</table>
						<br />
						<div id="pagingAll">
							${pagingString}
						</div>
					</div>
            		<div class="tab-pane fade" id="caffe" role="tabpanel">
            			<table class="table">
            				<thead>
								<tr>
									<th>상가 업소번호</th>
									<th>상호명(지점명)</th>
									<th>상권 업종 소분류명</th>
									<th>주소</th>
								</tr>
            				</thead>
            				<tbody>
            				</tbody>
            			</table>
						<br />
						<div id="pagingCaffe">
							${pagingString}
						</div>
            		</div>
            		<div class="tab-pane fade" id="beauty" role="tabpanel">
            			<table class="table">
            				<thead>
								<tr>
									<th>상가 업소번호</th>
									<th>상호명(지점명)</th>
									<th>상권 업종 소분류명</th>
									<th>주소</th>
								</tr>
            				</thead>
            				<tbody>
            				</tbody>
            			</table>
						<br />
						<div id="pagingBeauty">
							${pagingString}
						</div>
            		</div>
            		<div class="tab-pane fade" id="hospital" role="tabpanel">
            			<table class="table">
            				<thead>
								<tr>
									<th>상가 업소번호</th>
									<th>상호명(지점명)</th>
									<th>상권 업종 소분류명</th>
									<th>주소</th>
								</tr>
            				</thead>
            				<tbody>
            				</tbody>
            			</table>
						<br />
						<div id="pagingHospital">
							${pagingString}
						</div>
            		</div>
            		<div class="tab-pane fade" id="pharmacy" role="tabpanel">
            			<table class="table">
            				<thead>
								<tr>
									<th>상가 업소번호</th>
									<th>상호명(지점명)</th>
									<th>상권 업종 소분류명</th>
									<th>주소</th>
								</tr>
            				</thead>
            				<tbody>
            				</tbody>
            			</table>
						<br />
						<div id="pagingPharmacy">
							${pagingString}
						</div>
            		</div>
            		<div class="tab-pane fade" id="etc" role="tabpanel">
            			<table class="table">
            				<thead>
								<tr>
									<th>상가 업소번호</th>
									<th>상호명(지점명)</th>
									<th>상권 업종 소분류명</th>
									<th>주소</th>
								</tr>
            				</thead>
            				<tbody>
            				</tbody>
            			</table>
						<br />
						<div id="pagingEtc">
							${pagingString}
						</div>
            		</div>
            	</div>
            </div>
        </div>
    </div>
</div>