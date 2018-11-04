<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>
<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">자유게시판</h4>
                <table class="table">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>카테고리</th>
                            <th>제목</th>
                            <th>글쓴이</th>
                            <th>날짜</th>
                            <th>조회수</th>
                            <th>추천수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:if test="${not empty list }" var="freeCheck">
                        	<c:forEach items="#{list}" var="item">
	                        	<tr>
	                        		<td>${item.no}</td>
	                        		<td>${item.free_category}</td>
	                        		<td>${item.free_title}</td>
	                        		<td>
                                                    	<c:if test="${not empty item.mem_nickname}" var="nickResult">
                                                    		${item.mem_nickname}
                                                    	</c:if>
                                                    	<c:if test="${not nickResult}">
                                                    		탈퇴한 회원 ㅠ
                                                    	</c:if>
                                                    </td>
	                        		<td>${item.free_regidate}</td>
	                        		<td>${item.free_count}</td>
	                        		<td>${item.free_hit}</td>
	                        	</tr>
                        	</c:forEach>
                        </c:if>
                        <c:if test="${not freeCheck }">
                        	<tr>
                        		<td colspan="7" style="text-align: center">등록 된 글이 없습니다</td>
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
</div><!-- row -->