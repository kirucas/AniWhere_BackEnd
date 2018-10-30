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
            <tr>
              <td>1</td>
              <td>1</td>
              <td>연지</td>
              <td>4세</td>
              <td>고슴도치</td>
              <td>화이트초코</td>
            </tr>
            <tr>
              <td>2</td>
              <td>2</td>
              <td>곤지</td>
              <td>2세</td>
              <td>고슴도치</td>
              <td>화이트초코</td>
            </tr>
            <tr>
              <td>3</td>
              <td>3</td>
              <td>와와</td>
              <td>3세</td>
              <td>강아지</td>
              <td>치와와</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
