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
            <tr>
              <td>1</td>
              <td>김길동(1)</td>
              <td>코스모(가산점)</td>
              <td>2018/10/10</td>
              <td>2018/10/28</td>
            </tr>
                        <tr>
              <td>2</td>
              <td>박길동(2)</td>
              <td>코스모(가산점)</td>
              <td>2018/10/10</td>
              <td>2018/10/28</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>