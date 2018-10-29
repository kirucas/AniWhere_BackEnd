<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<style>
	h3{
		font-family:메이플스토리;
		padding-top:10px;
	}
	h5{
		font-family:메이플스토리;
	}
	p{
		font-family:메이플스토리;
	}
	
</style>
<!-- partial -->
<div class="card">
  <div class="card-body">
    <h4 class="card-title">만나요 정보</h4>
    <div class="row">
      <div class="col-12">
        <table id="order-listing" class="table">
          <thead>
            <tr>
              <th>프로필등록번호</th>
              <th>동물번호</th>
              <th>지역</th>
              <th>등록신청일자</th>
              <th>정보 보기</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>5</td>
              <td>10</td>
              <td>제주도</td>
              <td>2018/10/10</td>
              <td>
              	<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#matingModal">보기
                        <i class="mdi mdi-play-circle ml-1"></i>
              	</button>
              </td>
            </tr>
          </tbody>
        </table>
        
           <!-- 모달 상세보기 시작 -->
           <div class="modal fade" id="matingModal" tabindex="-1" role="dialog" aria-hidden="true">
             <div class="modal-dialog" role="document">
               <div class="modal-content">
                 <div class="modal-header">
                   <h5 class="modal-title" id="exampleModalLabel-2">상세보기</h5>
                   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                   </button>
                 </div>
                 <div class="modal-body">
                   <img src="<c:url value='/resources/images/profilesample.jpg'/>" alt="너굴맨">
					<h3>너굴맨의 프로필</h3>
					<p>내용</p>
					<h5>만나요 히스토리</h5>
					<p>내용</p>
                 </div>
                 <div class="modal-footer">
                   <button type="button" class="btn btn-primary" data-dismiss="modal">나가기</button>
                 </div>
               </div>
             </div>
           </div>
           <!-- 모달 상세보기 끝 -->
      </div>
    </div>
  </div>
</div>