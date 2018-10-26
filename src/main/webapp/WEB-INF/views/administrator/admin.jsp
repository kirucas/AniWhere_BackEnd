<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- partial -->
<div class="col-lg-12 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">관리자 정보</h4>
            <table class="table">
                <thead>
                    <tr>
                        <th>관리자 번호</th>
                        <th>프로필 사진</th>
                        <th>아이디</th>
                        <th>관리자 등급</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>
                        	<img src="<c:url value='/resources/images/profile_404.jpg' />" />
                        </td>
                        <td>Jacob</td>
                        <td>
                            <label class="badge badge-danger">게시판</label>
                        </td>
                        <td>
                        	<button class="btn btn-dark btn-fw">
                        		<i class="fa fa-edit"></i>
                        		edit
                        	</button>
                        </td>
                    </tr>
                    <c:forEach items="${admin_list }" var="adInfo">
                    	<tr>
                    		<td>${adInfo.am_no }</td>
                    		<td>
                    			<c:if test="${adInfo.am_profile_link eq '#@!no_exist!@#' }" var="result">
                    				<img src="<c:url value='/resources/images/profile_404.jpg' />" />
                    			</c:if>
                    			<c:if test="${not result }">
                    				<img src="<c:url value='${adInfo.am_profile_link }' />" />
                    			</c:if>
                    		</td>
                    		<td>${adInfo.am_id }</td>
                    		<td>
                    			<c:choose>
                    				<c:when test="${adInfo.am_level eq 1 }">
                    					<label class="badge badge-success">General Administrator</label>
                    				</c:when>
                    				<c:when test="${adInfo.am_level eq 2 }">
                    					<label class="badge badge-primary">Animal Manager</label>
                    				</c:when>
                    				<c:when test="${adInfo.am_level eq 3 }">
                    					<label class="badge badge-info">Market Manager</label>
                    				</c:when>
                    				<c:when test="${adInfo.am_level eq 4 }">
                    					<label class="badge badge-danger">Miss Manager</label>
                    				</c:when>
                    				<c:when test="${adInfo.am_level eq 5 }">
                    					<label class="badge badge-warning">Mating Manager</label>
                    				</c:when>
                    				<c:otherwise>
                    					<label class="badge badge-secondary">Where Manager</label>
                    				</c:otherwise>
                    			</c:choose>
                    			
                    		</td>
                    		<td>
                    			<c:if test="${am_id eq adInfo.am_id }">
		                        	<button class="btn btn-dark btn-fw">
		                        		<i class="fa fa-edit"></i>
		                        		edit
		                        	</button>
                    			</c:if>
                    		</td>
                    	</tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>