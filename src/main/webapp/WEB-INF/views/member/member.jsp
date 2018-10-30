<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>
<!-- partial -->
<div class="card">
  <div class="card-body">
    <h4 class="card-title">회원 정보</h4>
    <div class="row">
      <div class="col-12">
        <table id="order-listing" class="table">
          <thead>
            <tr>
              <th>회원 번호</th>
              <th>아이디</th>
              <th>이름</th>
              <th>별명</th>
              <th>성별</th>
              <th>로그인 구분</th>
              <th>관심 동물</th>
            </tr>
          </thead>
          <tbody>
          	<c:forEach items="${member_list }" var="memberInfo">
          		<tr>
          			<td>${memberInfo.mem_no }</td>
          			<td>${memberInfo.mem_id }</td>
          			<td>${memberInfo.mem_name }</td>
          			<td>${memberInfo.mem_nickname }</td>
          			<td>${memberInfo.mem_gender }</td>
          			<td>
          				
          				<c:choose>
          					<c:when test="${memberInfo.mem_log eq '0'}">
          						자체가입자
          					</c:when>
          					<c:when test="${memberInfo.mem_log eq '1'}">
          						네이버 회원
          					</c:when>
          					<c:when test="${memberInfo.mem_log eq '2'}">
          						구글 회원
          					</c:when>
          				</c:choose>
          			</td>
          			<td>
          				<%-- <c:set var="inter" value="${memberInfo.mem_interani }"/>
          				<c:choose>
          					<c:when test="${inter eq 0}">
          						없음
          					</c:when>
          					<c:when test="${fn:contains(inter,'1')}">
          						
          					</c:when>
          				</c:choose> --%>
          				${memberInfo.mem_interani }
          			</td>
          		</tr>
          	</c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>
