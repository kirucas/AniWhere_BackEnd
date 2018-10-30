<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    @import '<c:url value="/resources/css/table_css.css" />';
</style>
<!-- partial -->
<div class="card">
  <div class="card-body">
    <h4 class="card-title">업체 정보</h4>
    <div class="row">
      <div class="col-12">
        <table id="order-listing" class="table">
          <thead>
            <tr>
              <th>상가 업소번호</th>
              <th>상호명(지점명)</th>
              <th>상권 업종 소분류명</th>
              <th>주소</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>서울렙타일(충정로점)</td>
              <td>분양/용품/카페</td>
              <td>서울특별시 중구 서소문로 8 2층</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>