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
          <h4 class="card-title">찾아요</h4>
          <table class="table">
            <thead>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>날짜</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${flist }" var="fList">
              <tr>
                <td>${fList.no }</td>
                <td>
                	${fList.title } <label class="badge badge-success">20</label>
                </td>
                <td>${fList.mem_no }</td>
                <td>${fList.regidate }</td>
              </tr>
             </c:forEach>
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