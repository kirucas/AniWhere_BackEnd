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
            </tr>
          </thead>
          <tbody>
          	<c:forEach items="${shelter_list }" var="shelterList">
          		<tr>
          			<td>${shelterList.start_notice }</td>
          			<td>${shelterList.end_notice}</td>
          			<td>${shelterList.kind}</td>
          			<td>${shelterList.addr}</td>
          			<td>${shelterList.careNm}</td>
          		</tr>
          	</c:forEach>
          
          
           
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>