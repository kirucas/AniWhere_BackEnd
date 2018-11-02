<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>
<!-- partial -->
<div class="card">
    <div class="card-body">
        <h4 class="card-title">보호동물 정보</h4>
        <div class="row">
            <div class="col-12">
                <table id="order-listing" class="table">
                    <thead>
                        <tr>
                            <th>공고시작</th>
                            <th>공고종료</th>
                            <th>품종</th>
                            <th>주소</th>
                            <th>보호소</th>
                            <th>사진링크</th>
                        </tr>
                    </thead>
                    <tbody id="shelter_list">
                    	<c:if test="${not empty shelter_list}" var="result">
	                        <c:forEach items="${shelter_list }" var="shelterList">
	                            <tr>
	                                <td>${shelterList.start_notice }</td>
	                                <td>${shelterList.end_notice}</td>
	                                <td>${shelterList.kind}</td>
	                                <td>${shelterList.addr}</td>
	                                <td>${shelterList.carenm}</td>
	                                <td>
	                                	<button type="button" class="btn btn-info btn-fw" title="${shelterList.img_src }" data-toggle="modal" data-target="#animal_image_shelter" id="shelter_link">
	                                		<i class="ti-gallery"></i>사진보기
	                                	</button>
	                                </td>
	                            </tr>
	                        </c:forEach>
                        </c:if>
                        <c:if test="${not result}">
                        	<tr>
                        		<td colspan="6" style="text-align: center;">등록 된 동물이 없습니다</td>
                        	</tr>
                        </c:if>
                    </tbody>
                </table>
                <br />
                ${pagingString}
                <br />
                <div class="clearfix">
                	<div class="float-right">
                		<button id="passDateOnNotice" type="button" class="btn btn-warning btn-fw" data-toggle="tooltip" data-placement="top" title="공고 종료 일자가 지난 공고를 삭제 합니다">공고 삭제</button>
                	</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="animal_image_shelter" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-body">
			</div>
		</div>
	</div>
</div>