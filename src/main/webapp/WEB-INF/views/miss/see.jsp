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
          <h4 class="card-title">봤어요</h4>
          <table class="table">
            <thead>
              <tr>
                <th>번호</th>
                <th>카테고리</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>날짜</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>봤어요</td>
                <td>
                	안녕하세요 샘플입니다. <label class="badge badge-success">20</label>
                </td>
                <td>최성욱</td>
                <td>2018-10-04</td>
              </tr>
              <tr>
                <td>2</td>
                <td>봤어요</td>
                <td>
                	안녕하세요 샘플입니다. <label class="badge badge-success">15</label>
                </td>
                <td>최성욱</td>
                <td>2018-10-04</td>
              </tr>
              <tr>
                <td>3</td>
                <td>봤어요</td>
                <td>
                	안녕하세요 샘플입니다. <label class="badge badge-success">1</label>
                </td>
                <td>최성욱</td>
                <td>2018-10-04</td>
              </tr>
              <tr>
                <td>4</td>
                <td>봤어요</td>
                <td>안녕하세요 샘플입니다.</td>
                <td>최성욱</td>
                <td>2018-10-04</td>
              </tr>
              <tr>
                <td>5</td>
                <td>봤어요</td>
                <td>
                	안녕하세요 샘플입니다. <label class="badge badge-success">99</label>
                </td>
                <td>최성욱</td>
                <td>2018-10-04</td>
              </tr>
            </tbody>
          </table>
          <!-- 페이징 -->
          <div class="container" style="text-align:center;margin-top:20px;">
	          <div class="row">
	              <div class="col-lg-12 text-center">
	                  <nav>
	                      <ul class="pagination rounded-flat pagination-success justify-content-center">
	                          <li class="page-item">
	                              <a class="page-link" href="#">
	                                  <i class="mdi mdi-chevron-left"></i>
	                              </a>
	                          </li>
	                          <li class="page-item active">
	                              <a class="page-link" href="#">1</a>
	                          </li>
	                          <li class="page-item">
	                              <a class="page-link" href="#">2</a>
	                          </li>
	                          <li class="page-item">
	                              <a class="page-link" href="#">3</a>
	                          </li>
	                          <li class="page-item">
	                              <a class="page-link" href="#">4</a>
	                          </li>
	                          <li class="page-item">
	                              <a class="page-link" href="#">
	                                  <i class="mdi mdi-chevron-right"></i>
	                              </a>
	                          </li>
	                      </ul>
	                  </nav>
	              </div>
	          </div>
          </div>
         <!-- 페이징 끝 -->
         		
          </div>
        </div>
      </div>
  </div><!-- row -->