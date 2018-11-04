<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>
<!-- partial -->
<div class="card">
  <div class="card-body">
    <h4 class="card-title">동물 정보</h4>
    <div class="row">
      <div class="col-12">
        <table id="order-listing" class="table">
          <thead>
            <tr>
              <th>동물 번호</th>
              <th>회원 번호</th>
              <th>이름</th>
              <th>나이</th>
              <th>대분류</th>
              <th>중분류</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${animal_list }" var="animalInfo">
          		<tr>
          			<td>${animalInfo.ani_no }</td>
          			<td>${animalInfo.mem_no }</td>
          			<td>${animalInfo.ani_name }</td>
          			<td>${animalInfo.ani_age }</td>
          			<td>
          				<c:choose>
          					<c:when test="${animalInfo.ani_species eq '1'}">
          						강아지
          					</c:when>
          					<c:when test="${animalInfo.ani_species eq '2'}">
          						고양이
          					</c:when>
          					<c:when test="${animalInfo.ani_species eq '3'}">
          						파충류&양서류
          					</c:when>
          					<c:when test="${animalInfo.ani_species eq '4'}">
          						조류
          					</c:when>
          					<c:when test="${animalInfo.ani_species eq '5'}">
          						기타
          					</c:when>
          				</c:choose>
          			</td>
          			<td>${animalInfo.ani_kind }</td>
          		</tr>
          	</c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>
