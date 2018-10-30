<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
              <th>생일</th>
              <th>지역</th>
              <th>로그인 구분</th>
              <th>관심 동물</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>CHOI</td>
              <td>최성욱</td>
              <td>ㅁㅊ</td>
              <td>남자</td>
              <td>2018/01/01</td>
              <td>경기도 부천시</td>
              <td>
                <label class="badge badge-info">일반 회원</label>
              </td>
              <td>고슴도치</td>
            </tr>
            <tr>
              <td>2</td>
              <td>CHOI</td>
              <td>최성욱</td>
              <td>ㅁㅊ</td>
              <td>남자</td>
              <td>2018/01/01</td>
              <td>경기도 부천시</td>
              <td>
                <label class="badge badge-info">일반 회원</label>
              </td>
              <td>고슴도치</td>
            </tr>
            <tr>
              <td>3</td>
              <td>PARK</td>
              <td>박용주</td>
              <td>그른거읍따</td>
              <td>남자</td>
              <td>2018/01/01</td>
              <td>경기도 부천시</td>
              <td>
                <label class="badge badge-warning">관리자 회원</label>
              </td>
              <td>고슴도치</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
