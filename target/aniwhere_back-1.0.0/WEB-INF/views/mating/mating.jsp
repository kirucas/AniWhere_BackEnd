<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    @import '<c:url value="/resources/css/table_css.css" />';

    h3 {
        font-family: 메이플스토리;
        padding-top: 10px;
    }

    h5 {
        font-family: 메이플스토리;
    }

    p {
        font-family: 메이플스토리;
    }
</style>

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">만나요 정보</h4>
                <table class="table" id="tableform">
                    <thead>
                        <tr>
                            <th>프로필등록번호</th>
                            <th>동물번호</th>
                            <th>지역</th>
                            <th>등록신청일자</th>
                            <th>정보 보기</th>
                        </tr>
                    </thead>
                    <tbody class="matingBody">
                        <c:if test="${not empty list}" var="result">
                            <c:forEach items="${list}" var="item">
                                <tr>
                                    <td>${item.mating_no}</td>
                                    <td>${item.ani_no}</td>
                                    <td>${item.mating_loc}</td>
                                    <td>${item.mating_regidate}</td>
                                    <td>
                                    	<button type="button" class="btn btn-primary btn-sm mating-toggle" data-toggle="modal" data-target="#matingInfo" title="${item.mating_no}">상세 정보 보기</button>
                                    </td>
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
<div class="modal fade" id="matingInfo" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-center" role="document">
        <div class="modal-content">
            <div class="modal-header">
            	<h5 class="modal-title">상세 보기</h5>
            </div>
            <div class="modal-body">
            </div>
        </div>
    </div>
</div>